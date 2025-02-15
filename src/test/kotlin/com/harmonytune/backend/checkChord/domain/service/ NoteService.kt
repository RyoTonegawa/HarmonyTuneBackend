package com.harmonytune.backend.checkChord.domain.service

import org.junit.jupiter.api.Assertions.*
import org.junit.jupiter.api.Test
import org.junit.jupiter.api.assertThrows
import org.springframework.http.HttpStatus
import org.springframework.web.server.ResponseStatusException
import com.harmonytune.backend.checkChord.domain.service.FrequencyService
import com.harmonytune.backend.checkChord.domain.service.DegreeService

class NoteServiceTest {
    private val degreeService:DegreeService= DegreeService();
    private val frequencyService:FrequencyService= FrequencyService();
    private val noteService = NoteService(
        frequencyService, 
        degreeService
        );

    @Test
    fun `C`() {
        val rootNoteName = "C"
        val noteNumberList:List<Int> = listOf(60,67,65);
        val result = noteService.determineChordToneNoteNumber(rootNoteName, noteNumberList);

        assertEquals(result, rootNoteName, "ノートナンバーが正しく取得される")
    }

}
