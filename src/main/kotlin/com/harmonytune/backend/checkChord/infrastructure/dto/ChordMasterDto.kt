package com.harmonytune.backend.checkChord.infrastructure.dto

import java.util.Date

import com.fasterxml.jackson.annotation.JsonCreator
import com.fasterxml.jackson.annotation.JsonProperty

data class ChordMasterDto @JsonCreator constructor(
    @JsonProperty("root") val root: String,
    @JsonProperty("chord_name") val chordName: String,
    @JsonProperty("tones") val tones: List<String>,
    @JsonProperty("degrees") val degrees: List<String>,
    @JsonProperty("latest_update") val latestUpdate: Date
)