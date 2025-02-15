package com.harmonytune.backend.checkChord.domain.model

import lombok.AllArgsConstructor
import lombok.Getter

@AllArgsConstructor
@Getter
public class Chord(
    // コードの名前
    val rootNoteName: String,
    // I Majorとか
    val rootDegreeName: String,
    // 根音の度数
    val rootDegreeInScale: Double,
    // 根音のノートナンバー：３.０
    val rootNoteNumber: Int,
    // 度数のリスト
    val degreeInChordList: List<String>,
    // コードの音程のリスト
    val chordToneList: List<Note>
)
