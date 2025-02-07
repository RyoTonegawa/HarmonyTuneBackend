package com.harmonytune.backend.checkChord.domain.model

import lombok.AllArgsConstructor
import lombok.Getter

@AllArgsConstructor
@Getter
public class Chord(
    val degreeList: List<Double>,
    val quality: String,
    val chordName: String
)
