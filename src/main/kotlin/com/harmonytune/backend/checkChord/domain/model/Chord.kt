package com.harmonytune.backend.checkChord.domain.model

import lombok.AllArgsConstructor
import lombok.Getter

@AllArgsConstructor
@Getter
public class Chord(
    // I Majorとか
    val rootDegreeName: String,
    // コードの名前
    // val chordName: String,
    // 根音の度数
    val rootDegree: Double,
    // 根音のノートナンバー：３.０
    val rootNoteNumber: Int,
    // 度数のリスト
    val degreeList: List<Double>,
    // コードの種類
    val quality: String,
    // コードの音程のリスト
    val chordToneList: List<Note>
)
