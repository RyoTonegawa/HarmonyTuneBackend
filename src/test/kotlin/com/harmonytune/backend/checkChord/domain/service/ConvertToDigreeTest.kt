package com.harmonytune.backend.checkChord.domain.service

import org.junit.jupiter.api.Assertions.*
import org.junit.jupiter.api.Test
import org.junit.jupiter.api.assertThrows
import org.springframework.http.HttpStatus
import org.springframework.web.server.ResponseStatusException

class ConvertToDigreeTest {

    private val convertToDigree = ConvertToDigree()

    @Test
    fun `剰余０から５の時の場合１から４の度数に変換`() {
        val keySignature = "C"
        val noteNumbers = listOf(0,1,2,3,4,5)
        val expectedDegrees = listOf(1.0,1.5,2.0,2.5,3.0,4.0)
        val result = convertToDigree.fromNoteNumber(keySignature, noteNumbers)

        assertEquals(expectedDegrees, result, "ノートナンバーが正しく度数に変換される")
    }
    @Test
    fun `剰余6から11の時の場合4_5から7の度数に変換`() {
        val keySignature = "C"
        val noteNumbers = listOf(6,7,8,9,10,11)
        val expectedDegrees = listOf(4.5,5.0,5.5,6.0,6.5,7.0)

        val result = convertToDigree.fromNoteNumber(keySignature, noteNumbers)

        assertEquals(expectedDegrees, result, "ノートナンバーが正しく度数に変換される")
    }

    @Test
    fun `Cメジャー以外のキーを指定するとエラーを返す`() {
        val keySignature = "G"
        val noteNumbers = listOf(0, 2, 4)

        val exception = assertThrows<ResponseStatusException> {
            convertToDigree.fromNoteNumber(keySignature, noteNumbers)
        }

        assertEquals(HttpStatus.BAD_REQUEST, exception.statusCode, "Cメジャー以外は 400 エラー") 
        assertEquals("Now Key Signature must be C", exception.reason, "エラーメッセージが正しい")
    }
}
