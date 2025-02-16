package com.harmonytune.backend.checkChord.infrastructure

import com.harmonytune.backend.client.supabase.SupabaseClient
import com.harmonytune.backend.client.supabase.SupabaseApi
import com.harmonytune.backend.checkChord.infrastructure.dto.ChordMasterDto
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import com.google.gson.Gson
import com.google.gson.reflect.TypeToken
import org.springframework.stereotype.Repository

@Repository
class ChordMasterRepository(
    private val api: SupabaseApi = SupabaseClient.api
    ) {

    private val gson = Gson()
    private val listType = object : TypeToken<List<String>>() {}.type

    suspend fun getChordMasters(noteNameList: List<String>): List<ChordMasterDto> = withContext(Dispatchers.IO) {
        val jsonArray = noteNameList.joinToString(prefix = "[", postfix = "]") { "\"$it\"" }

        val response = api.getChordMastersByExactTones(
            apiKey = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InlmdGlhc2l4cGF3bmZ2bmR4b3FjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzkyNDE1NDgsImV4cCI6MjA1NDgxNzU0OH0.5z34KlPDyGiKTmUka0aurtrCuD04NRQsko6fGk1M5k4",  // 環境変数などで管理
            authHeader = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InlmdGlhc2l4cGF3bmZ2bmR4b3FjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzkyNDE1NDgsImV4cCI6MjA1NDgxNzU0OH0.5z34KlPDyGiKTmUka0aurtrCuD04NRQsko6fGk1M5k4", // 同上
            containsFilter = "cs.$jsonArray",
            containedFilter = "cd.$jsonArray"
        )

        // もし tones が文字列で取得された場合、Gson を使って List<String> に変換
        response.map { dto ->
            dto.copy(
                tones = parseJsonArray(dto.tones),
                degrees = parseJsonArray(dto.degrees)
            )
        }
    }

    private fun parseJsonArray(input: Any): List<String> {
        return when (input) {
            is List<*> -> input.filterIsInstance<String>() // すでに List<String> の場合
            is String -> gson.fromJson(input, listType)  // JSON文字列の場合
            else -> emptyList()
        }
    }
}
