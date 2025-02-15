package com.harmonytune.backend.client.supabase

import retrofit2.http.GET
import retrofit2.http.Header
import retrofit2.http.Query
import com.harmonytune.backend.checkChord.infrastructure.dto.ChordMasterDto

interface SupabaseApi {
    /**
     * tones カラムの完全一致検索（順序は問わない）:
     * tones 配列が、指定の配列を含み（cs）かつ指定の配列に含まれる（cd）レコードを返す。
     *
     * 例: 入力 ["C","E","G"] の場合、下記のクエリパラメータを設定する:
     *  ?tones=cs.["C","E","G"]&tones=cd.["C","E","G"]
     */
    @GET("chord_master")
    suspend fun getChordMastersByExactTones(
        @Header("apikey") apiKey: String,
        @Header("Authorization") authHeader: String,
        // 同じキー tones を2回渡すと、URLには &tones=...&tones=... と連結される
        @Query("tones") containsFilter: String,
        @Query("tones") containedFilter: String
    ): List<ChordMasterDto>
}

