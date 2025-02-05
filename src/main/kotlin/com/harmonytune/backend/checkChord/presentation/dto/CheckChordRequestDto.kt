package com.harmonytune.backend.checkChord.presentation.dto

import jakarta.validation.constraints.NotBlank // 追加
import jakarta.validation.constraints.NotNull  // 追加
import lombok.AllArgsConstructor
import lombok.Data

@Data
@AllArgsConstructor
data class CheckChordRequestDto(
    @field:NotNull
    @field:NotBlank
    val notes: List<String>,
    @field:NotNull
    @field:NotBlank
    val keySignature: String,
)