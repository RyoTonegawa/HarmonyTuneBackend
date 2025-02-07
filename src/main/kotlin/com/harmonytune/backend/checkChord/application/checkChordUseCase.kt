package com.harmonytune.backend.checkChord.application

import com.harmonytune.backend.checkChord.presentation.dto.CheckChordRequestDto
import com.harmonytune.backend.checkChord.presentation.dto.CheckChordResponseDto
import com.harmonytune.backend.checkChord.domain.service.ConvertToDigree
import com.harmonytune.backend.checkChord.domain.service.DetermineChord
import org.springframework.stereotype.Service

@Service
class CheckChordUseCase(
    private val convertToDigree: ConvertToDigree,
    private val determineChord: DetermineChord
) {
    fun determineChord(
        request: CheckChordRequestDto
    ): CheckChordResponseDto {
        // NoteNumberからdigreeに変換
        val digreeList = this.convertToDigree.fromNoteNumber(
            request.keySignature,
            request.noteNumberList
        )
        System.out.println(digreeList)
        // KeySignatureに従ってコードを特定
        val chordList = this.determineChord.determineChord(digreeList)
        // コードを返す
        return CheckChordResponseDto(
            chordList
        )
    }
}