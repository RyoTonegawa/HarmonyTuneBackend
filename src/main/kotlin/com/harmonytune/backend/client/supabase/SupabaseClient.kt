package com.harmonytune.backend.client.supabase

import retrofit2.Retrofit
import retrofit2.converter.jackson.JacksonConverterFactory

object SupabaseClient {
    // Supabase プロジェクトの REST API のエンドポイント URL (必ず末尾にスラッシュ "/" を付ける)
    private const val BASE_URL = "https://yftiasixpawnfvndxoqc.supabase.co/rest/v1/"

    private val retrofit: Retrofit by lazy {
        Retrofit.Builder()
            .baseUrl(BASE_URL)
            .addConverterFactory(JacksonConverterFactory.create())
            .build()
    }

    val api: SupabaseApi by lazy {
        retrofit.create(SupabaseApi::class.java)
    }
}
