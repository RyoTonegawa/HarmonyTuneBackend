package com.harmonytune.backend.checkChord.domain.model

import lombok.AllArgsConstructor
import lombok.Getter

@AllArgsConstructor
@Getter

public class Note(
    // 度数
    val degree: Double,
    // MIDIのノートナンバー 
    val noteNumber: Int,
    // 音名
    val noteName: String,
    // ルートからの半音の距離
    val semiToneInterval: Int,
    // 度数の名称
    val degreeName: String,
    // 純正律の周波数
    val justNotation: Double,
    // 平均律の周波数
    val equalTemperament: Double,
    //　　平均律から純正律へ直すときのセント差
    val centsDifference: Double,
) 

    



