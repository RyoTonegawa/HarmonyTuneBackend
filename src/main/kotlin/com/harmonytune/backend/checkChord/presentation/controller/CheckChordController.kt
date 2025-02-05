package com.harmonytune.backend.checkChord.presentation.controller

import com.harmonytune.backend.checkChord.application.CheckChordUseCase
import com.harmonytune.backend.checkChord.presentation.dto.CheckChordRequestDto
import com.harmonytune.backend.checkChord.presentation.dto.CheckChordResponseDto
import org.springframework.http.ResponseEntity
import org.springframework.web.bind.annotation.PostMapping
import org.springframework.web.bind.annotation.RequestBody
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController  

@RestController
@RequestMapping("/check-chord")
class CheckChordController(
    private val checkChordUseCase: CheckChordUseCase
) {

    @PostMapping("/check")
    fun determineChord(
        @RequestBody request: CheckChordRequestDto
    ): ResponseEntity<CheckChordResponseDto> {
        val chord = checkChordUseCase.determineChord(request)
        return ResponseEntity.ok(chord)
    }
}
