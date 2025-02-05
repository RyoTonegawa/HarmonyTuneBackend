package com.harmonytune.backend.checkChord.application

import com.harmonytune.backend.checkChord.presentation.dto.CheckChordRequestDto
import com.harmonytune.backend.checkChord.presentation.dto.CheckChordResponseDto
import org.springframework.stereotype.Service
@Service
class CheckChordUseCase{
    fun determineChord(
        request: CheckChordRequestDto
    ): CheckChordResponseDto {
        return CheckChordResponseDto(
            request.notes,
            request.keySignature
        )
    }
}