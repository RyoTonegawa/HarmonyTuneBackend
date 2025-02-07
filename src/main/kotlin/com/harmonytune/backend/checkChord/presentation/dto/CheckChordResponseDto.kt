package com.harmonytune.backend.checkChord.presentation.dto

import jakarta.validation.constraints.NotBlank // 追加
import jakarta.validation.constraints.NotNull  // 追加
import lombok.AllArgsConstructor
import lombok.Data
import com.harmonytune.backend.checkChord.domain.model.Chord

@Data
@AllArgsConstructor
data class CheckChordResponseDto(
    @field:NotNull
    @field:NotBlank
    val chordList: List<Chord>
)