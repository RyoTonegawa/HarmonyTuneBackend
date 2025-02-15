package com.harmonytune.backend.checkChord.domain.model

import lombok.AllArgsConstructor
import lombok.Getter

@AllArgsConstructor
@Getter

public class Note(
    // 度数の名称
    val degreeName: String,
    // 度数
    // val degree: Double,
    // MIDIのノートナンバー 
    val noteNumber: Int,
    // 音名
    val noteName: String,
    //　　平均律から純正律へ直すときのセント差
    val centsDifference: Double,
) 

    



