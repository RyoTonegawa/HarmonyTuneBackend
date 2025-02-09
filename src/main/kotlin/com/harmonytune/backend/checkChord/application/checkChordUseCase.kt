package com.harmonytune.backend.checkChord.application

import com.harmonytune.backend.checkChord.presentation.dto.CheckChordRequestDto
import com.harmonytune.backend.checkChord.presentation.dto.CheckChordResponseDto
import com.harmonytune.backend.checkChord.domain.service.DegreeService
import com.harmonytune.backend.checkChord.domain.service.ChordService
import com.harmonytune.backend.checkChord.domain.service.FrequencyService
import com.harmonytune.backend.checkChord.domain.service.NoteService
import com.harmonytune.backend.checkChord.domain.service.DetermineChordDto
import com.harmonytune.backend.checkChord.domain.service.CreateNoteListDto
import com.harmonytune.backend.checkChord.domain.model.Note
import com.harmonytune.backend.checkChord.domain.model.Chord
import com.harmonytune.backend.checkChord.domain.dto.GetSemitoneIntervalDto
import com.harmonytune.backend.checkChord.domain.dto.degreeService.GetDegreeDto
import com.harmonytune.backend.checkChord.application.CreateResponseService
import org.springframework.stereotype.Service

@Service
class CheckChordUseCase(
    private val degreeService: DegreeService,
    private val chordService: ChordService,
    private val noteService: NoteService,
    private val createResponseService: CreateResponseService
) {
    fun determineChord(
        request: CheckChordRequestDto
    ): CheckChordResponseDto {
        // NoteNumberからintervalに変換
        val GetSemitoneIntervalDtoList:List<GetSemitoneIntervalDto> = this.degreeService.getSemitoneInterval(
            request.keySignature,
            request.noteNumberList
        );
        //　度数の組み合わせを取得
        val degreeList:List<GetDegreeDto> = this.degreeService.getDegree(GetSemitoneIntervalDtoList);
        System.out.println("degreeList: " + degreeList)
        // 度数の組み合わせからコードを特定
        val chordList:List<DetermineChordDto> = this.chordService.determineChord(
            degreeList,
            request.noteNumberList
        );
        // コードからそれぞれの音程の詳細情報を作成する
        val chordNoteMap: List<CreateNoteListDto> =
            this.noteService.createNoteList(
                chordList,
                degreeList,
                request.noteNumberList);
        // コードを返す
        return this.createResponseService.createResponse(
            chordList,
            chordNoteMap
        )
    }
}