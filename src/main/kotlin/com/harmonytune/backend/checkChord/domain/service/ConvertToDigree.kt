package com.harmonytune.backend.checkChord.domain.service

import org.springframework.stereotype.Service
import org.springframework.http.HttpStatus
import org.springframework.web.server.ResponseStatusException
import com.harmonytune.backend.checkChord.domain.constraints.DigreeEnum

/**
 * Convert NoteNumber to Digree
 */
@Service
public class ConvertToDigree {
    public fun fromNoteNumber(
        keySignature:String,
        noteNumbers: List<Int>
    ): List<Double> {
        if(keySignature=="C"){
            return noteNumbers.map{ note ->
                val mod12 = (note%12)
                System.out.println("note: "+note+" : mod12: "+mod12+" : degree: "+DigreeEnum.fromKeyNumber(mod12))
                DigreeEnum.fromKeyNumber(mod12)
            }
        }
        // Cメジャー以外は今後対応
        throw ResponseStatusException(
            HttpStatus.BAD_REQUEST,
            "Now Key Signature must be C"
        )
    }
}