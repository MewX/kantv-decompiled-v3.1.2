package org.fourthline.cling.support.model.dlna;

public enum DLNAProfiles {
    NONE("", ""),
    JPEG_SM("JPEG_SM", r1),
    JPEG_MED("JPEG_MED", r1),
    JPEG_LRG("JPEG_LRG", r1),
    JPEG_TN("JPEG_TN", r1),
    JPEG_SM_ICO("JPEG_SM_ICO", r1),
    JPEG_LRG_ICO("JPEG_LRG_ICO", r1),
    PNG_TN("PNG_TN", r1),
    PNG_SM_ICO("PNG_SM_ICO", r1),
    PNG_LRG_ICO("PNG_LRG_ICO", r1),
    PNG_LRG("PNG_LRG", r1),
    LPCM("LPCM", DLNAMimeTypes.MIME_AUDIO_LPCM),
    LPCM_LOW("LPCM_low", DLNAMimeTypes.MIME_AUDIO_LPCM),
    MP3("MP3", "audio/mpeg"),
    MP3X("MP3X", "audio/mpeg"),
    WMABASE("WMABASE", r1),
    WMAFULL("WMAFULL", r1),
    WMAPRO("WMAPRO", r1),
    AAC_ADTS("AAC_ADTS", r1),
    AAC_ADTS_320("AAC_ADTS_320", r1),
    AAC_ISO("AAC_ISO", r2),
    AAC_ISO_320("AAC_ISO_320", r2),
    AAC_LTP_ISO("AAC_LTP_ISO", r2),
    AAC_LTP_MULT5_ISO("AAC_LTP_MULT5_ISO", r2),
    AAC_LTP_MULT7_ISO("AAC_LTP_MULT7_ISO", r2),
    AAC_MULT5_ADTS("AAC_MULT5_ADTS", r1),
    AAC_MULT5_ISO("AAC_MULT5_ISO", r2),
    HEAAC_L2_ADTS("HEAAC_L2_ADTS", r1),
    HEAAC_L2_ISO("HEAAC_L2_ISO", r2),
    HEAAC_L3_ADTS("HEAAC_L3_ADTS", r1),
    HEAAC_L3_ISO("HEAAC_L3_ISO", r2),
    HEAAC_MULT5_ADTS("HEAAC_MULT5_ADTS", r1),
    HEAAC_MULT5_ISO("HEAAC_MULT5_ISO", r2),
    HEAAC_L2_ADTS_320("HEAAC_L2_ADTS_320", r1),
    HEAAC_L2_ISO_320("HEAAC_L2_ISO_320", r2),
    BSAC_ISO("BSAC_ISO", r2),
    BSAC_MULT5_ISO("BSAC_MULT5_ISO", r2),
    HEAACv2_L2(r3, r2),
    HEAACv2_L2_ADTS(r3, r1),
    HEAACv2_L2_320(r3, r2),
    HEAACv2_L2_320_ADTS(r3, r1),
    HEAACv2_L3(r1, r2),
    HEAACv2_L3_ADTS(r1, "vnd.dlna.adts"),
    HEAACv2_MULT5("HEAACv2_MULT5", r2),
    HEAACv2_MULT5_ADTS("HEAACv2_MULT5", "vnd.dlna.adts"),
    AC3("AC3", DLNAMimeTypes.MIME_AUDIO_DOLBY_DIGITAL),
    AMR("AMR_3GPP", r2),
    THREE_GPP("AMR_3GPP", "audio/3gpp"),
    AMR_WBplus("AMR_WBplus", "audio/3gpp"),
    ATRAC3("ATRAC3plus", DLNAMimeTypes.MIME_AUDIO_ATRAC),
    WMVMED_BASE("WMVMED_BASE", r1),
    WMVMED_FULL("WMVMED_FULL", r1),
    WMVMED_PRO("WMVMED_PRO", r1),
    WMVHIGH_FULL("WMVHIGH_FULL", r1),
    WMVHIGH_PRO("WMVHIGH_PRO", r1),
    WMVHM_BASE("WMVHM_BASE", r1),
    WMVSPLL_BASE("WMVSPLL_BASE", r1),
    WMVSPML_BASE("WMVSPML_BASE", r1),
    WMVSPML_MP3("WMVSPML_MP3", r1),
    MPEG1("MPEG1", r2),
    MPEG_PS_NTSC("MPEG_PS_NTSC", r2),
    MPEG_PS_NTSC_XAC3("MPEG_PS_NTSC_XAC3", r2),
    MPEG_PS_PAL("MPEG_PS_PAL", r2),
    MPEG_PS_PAL_XAC3("MPEG_PS_PAL_XAC3", r2),
    MPEG_TS_MP_LL_AAC("MPEG_TS_MP_LL_AAC", r3),
    MPEG_TS_MP_LL_AAC_T("MPEG_TS_MP_LL_AAC_T", r3),
    MPEG_TS_MP_LL_AAC_ISO("MPEG_TS_MP_LL_AAC_ISO", r2),
    MPEG_TS_SD_50_L2_T("MPEG_TS_SD_50_L2_T", r3),
    MPEG_TS_SD_60_L2_T("MPEG_TS_SD_60_L2_T", r3),
    MPEG_TS_SD_60_AC3_T("MPEG_TS_SD_60_AC3_T", r3),
    MPEG_TS_SD_EU("MPEG_TS_SD_EU", r3),
    MPEG_TS_SD_EU_T("MPEG_TS_SD_EU_T", r3),
    MPEG_TS_SD_EU_ISO("MPEG_TS_SD_EU_ISO", r2),
    MPEG_TS_SD_50_AC3_T("MPEG_TS_SD_50_AC3_T", r3),
    MPEG_TS_SD_NA("MPEG_TS_SD_NA", r3),
    MPEG_TS_SD_NA_T("MPEG_TS_SD_NA_T", r3),
    MPEG_TS_SD_NA_ISO("MPEG_TS_SD_NA_ISO", r2),
    MPEG_TS_SD_NA_XAC3("MPEG_TS_SD_NA_XAC3", r3),
    MPEG_TS_SD_NA_XAC3_T("MPEG_TS_SD_NA_XAC3_T", r3),
    MPEG_TS_SD_NA_XAC3_ISO("MPEG_TS_SD_NA_XAC3_ISO", r2),
    MPEG_TS_HD_NA("MPEG_TS_HD_NA", r3),
    MPEG_TS_HD_NA_T("MPEG_TS_HD_NA_T", r3),
    MPEG_TS_HD_50_L2_T("MPEG_TS_HD_50_L2_T", r3),
    MPEG_TS_HD_50_L2_ISO("MPEG_TS_HD_50_L2_ISO", r2),
    MPEG_TS_HD_60_L2_T("MPEG_TS_HD_60_L2_T", r3),
    MPEG_TS_HD_60_L2_ISO("MPEG_TS_HD_60_L2_ISO", r2),
    MPEG_TS_HD_NA_ISO("MPEG_TS_HD_NA_ISO", r2),
    MPEG_TS_HD_NA_XAC3("MPEG_TS_HD_NA_XAC3", r3),
    MPEG_TS_HD_NA_XAC3_T("MPEG_TS_HD_NA_XAC3_T", r3),
    MPEG_TS_HD_NA_XAC3_ISO("MPEG_TS_HD_NA_XAC3_ISO", r2),
    MPEG_ES_PAL("MPEG_ES_PAL", r2),
    MPEG_ES_NTSC("MPEG_ES_NTSC", r2),
    MPEG_ES_PAL_XAC3("MPEG_ES_PAL_XAC3", r2),
    MPEG_ES_NTSC_XAC3("MPEG_ES_NTSC_XAC3", r2),
    MPEG4_P2_MP4_SP_AAC("MPEG4_P2_MP4_SP_AAC", r4),
    MPEG4_P2_MP4_SP_HEAAC("MPEG4_P2_MP4_SP_HEAAC", r4),
    MPEG4_P2_MP4_SP_ATRAC3plus("MPEG4_P2_MP4_SP_ATRAC3plus", r4),
    MPEG4_P2_MP4_SP_AAC_LTP("MPEG4_P2_MP4_SP_AAC_LTP", r4),
    MPEG4_P2_MP4_SP_L2_AAC("MPEG4_P2_MP4_SP_L2_AAC", r4),
    MPEG4_P2_MP4_SP_L2_AMR("MPEG4_P2_MP4_SP_L2_AMR", r4),
    MPEG4_P2_MP4_SP_VGA_AAC("MPEG4_P2_MP4_SP_VGA_AAC", r4),
    MPEG4_P2_MP4_SP_VGA_HEAAC("MPEG4_P2_MP4_SP_VGA_HEAAC", r4),
    MPEG4_P2_MP4_ASP_AAC("MPEG4_P2_MP4_ASP_AAC", r4),
    MPEG4_P2_MP4_ASP_HEAAC("MPEG4_P2_MP4_ASP_HEAAC", r4),
    MPEG4_P2_MP4_ASP_HEAAC_MULT5("MPEG4_P2_MP4_ASP_HEAAC_MULT5", r4),
    MPEG4_P2_MP4_ASP_ATRAC3plus("MPEG4_P2_MP4_ASP_ATRAC3plus", r4),
    MPEG4_P2_MP4_ASP_L5_SO_AAC("MPEG4_P2_MP4_ASP_L5_SO_AAC", r4),
    MPEG4_P2_MP4_ASP_L5_SO_HEAAC("MPEG4_P2_MP4_ASP_L5_SO_HEAAC", r4),
    MPEG4_P2_MP4_ASP_L5_SO_HEAAC_MULT5("MPEG4_P2_MP4_ASP_L5_SO_HEAAC_MULT5", r4),
    MPEG4_P2_MP4_ASP_L4_SO_AAC("MPEG4_P2_MP4_ASP_L4_SO_AAC", r4),
    MPEG4_P2_MP4_ASP_L4_SO_HEAAC("MPEG4_P2_MP4_ASP_L4_SO_HEAAC", r4),
    MPEG4_P2_MP4_ASP_L4_SO_HEAAC_MULT5("MPEG4_P2_MP4_ASP_L4_SO_HEAAC_MULT5", r4),
    MPEG4_H263_MP4_P0_L10_AAC("MPEG4_H263_MP4_P0_L10_AAC", r5),
    MPEG4_H263_MP4_P0_L10_AAC_LTP("MPEG4_H263_MP4_P0_L10_AAC_LTP", r5),
    MPEG4_P2_TS_SP_AAC("MPEG4_P2_TS_SP_AAC", r3),
    MPEG4_P2_TS_SP_AAC_T("MPEG4_P2_TS_SP_AAC_T", r3),
    MPEG4_P2_TS_SP_AAC_ISO("MPEG4_P2_TS_SP_AAC_ISO", r2),
    MPEG4_P2_TS_SP_MPEG1_L3("MPEG4_P2_TS_SP_MPEG1_L3", r3),
    MPEG4_P2_TS_SP_MPEG1_L3_T("MPEG4_P2_TS_SP_MPEG1_L3_T", r3),
    MPEG4_P2_TS_SP_MPEG1_L3_ISO("MPEG4_P2_TS_SP_MPEG1_L3_ISO", r2),
    MPEG4_P2_TS_SP_AC3_L3("MPEG4_P2_TS_SP_AC3_L3", r3),
    MPEG4_P2_TS_SP_AC3_T("MPEG4_P2_TS_SP_AC3_T", r3),
    MPEG4_P2_TS_SP_AC3_ISO("MPEG4_P2_TS_SP_AC3_ISO", r2),
    MPEG4_P2_TS_SP_MPEG2_L2("MPEG4_P2_TS_SP_MPEG2_L2", r3),
    MPEG4_P2_TS_SP_MPEG2_L2_T("MPEG4_P2_TS_SP_MPEG2_L2_T", r3),
    MPEG4_P2_TS_SP_MPEG2_L2_ISO("MPEG4_P2_TS_SP_MPEG2_L2_ISO", r2),
    MPEG4_P2_TS_ASP_AAC("MPEG4_P2_TS_ASP_AAC", r3),
    MPEG4_P2_TS_ASP_AAC_T("MPEG4_P2_TS_ASP_AAC_T", r3),
    MPEG4_P2_TS_ASP_AAC_ISO("MPEG4_P2_TS_ASP_AAC_ISO", r2),
    MPEG4_P2_TS_ASP_MPEG1_L3("MPEG4_P2_TS_ASP_MPEG1_L3", r3),
    MPEG4_P2_TS_ASP_MPEG1_L3_T("MPEG4_P2_TS_ASP_MPEG1_L3_T", r3),
    MPEG4_P2_TS_ASP_MPEG1_L3_ISO("MPEG4_P2_TS_ASP_MPEG1_L3_ISO", r2),
    MPEG4_P2_TS_ASP_AC3_L3("MPEG4_P2_TS_ASP_AC3_L3", r3),
    MPEG4_P2_TS_ASP_AC3_T("MPEG4_P2_TS_ASP_AC3_T", r3),
    MPEG4_P2_TS_ASP_AC3_ISO("MPEG4_P2_TS_ASP_AC3_ISO", r2),
    MPEG4_P2_TS_CO_AC3("MPEG4_P2_TS_CO_AC3", r3),
    MPEG4_P2_TS_CO_AC3_T("MPEG4_P2_TS_CO_AC3_T", r3),
    MPEG4_P2_TS_CO_AC3_ISO("MPEG4_P2_TS_CO_AC3_ISO", r2),
    MPEG4_P2_TS_CO_MPEG2_L2("MPEG4_P2_TS_CO_MPEG2_L2", r3),
    MPEG4_P2_TS_CO_MPEG2_L2_T("MPEG4_P2_TS_CO_MPEG2_L2_T", r3),
    MPEG4_P2_TS_CO_MPEG2_L2_ISO("MPEG4_P2_TS_CO_MPEG2_L2_ISO", r2),
    MPEG4_P2_ASF_SP_G726("MPEG4_P2_ASF_SP_G726", r6),
    MPEG4_P2_ASF_ASP_L5_SO_G726("MPEG4_P2_ASF_ASP_L5_SO_G726", r6),
    MPEG4_P2_ASF_ASP_L4_SO_G726("MPEG4_P2_ASF_ASP_L4_SO_G726", r6),
    MPEG4_H263_3GPP_P0_L10_AMR_WBplus("MPEG4_H263_3GPP_P0_L10_AMR_WBplus", r5),
    MPEG4_P2_3GPP_SP_L0B_AAC("MPEG4_P2_3GPP_SP_L0B_AAC", r5),
    MPEG4_P2_3GPP_SP_L0B_AMR("MPEG4_P2_3GPP_SP_L0B_AMR", r5),
    MPEG4_H263_3GPP_P3_L10_AMR("MPEG4_H263_3GPP_P3_L10_AMR", r5),
    AVC_MP4_MP_SD_AAC_MULT5("AVC_MP4_MP_SD_AAC_MULT5", r4),
    AVC_MP4_MP_SD_HEAAC_L2("AVC_MP4_MP_SD_HEAAC_L2", r4),
    AVC_MP4_MP_SD_MPEG1_L3("AVC_MP4_MP_SD_MPEG1_L3", r4),
    AVC_MP4_MP_SD_AC3("AVC_MP4_MP_SD_AC3", r4),
    AVC_MP4_MP_SD_AAC_LTP("AVC_MP4_MP_SD_AAC_LTP", r4),
    AVC_MP4_MP_SD_AAC_LTP_MULT5("AVC_MP4_MP_SD_AAC_LTP_MULT5", r4),
    AVC_MP4_MP_SD_AAC_LTP_MULT7("AVC_MP4_MP_SD_AAC_LTP_MULT7", r4),
    AVC_MP4_MP_SD_ATRAC3plus("AVC_MP4_MP_SD_ATRAC3plus", r4),
    AVC_MP4_MP_SD_BSAC("AVC_MP4_MP_SD_BSAC", r4),
    AVC_MP4_MP_HD_720p_AAC("AVC_MP4_MP_HD_720p_AAC", r4),
    AVC_MP4_MP_HD_1080i_AAC("AVC_MP4_MP_HD_1080i_AAC", r4),
    AVC_MP4_HP_HD_AAC("AVC_MP4_HP_HD_AAC", r4),
    AVC_MP4_BL_L3L_SD_AAC("AVC_MP4_BL_L3L_SD_AAC", r4),
    AVC_MP4_BL_L3L_SD_HEAAC("AVC_MP4_BL_L3L_SD_HEAAC", r4),
    AVC_MP4_BL_L3_SD_AAC("AVC_MP4_BL_L3_SD_AAC", r4),
    AVC_MP4_BL_CIF30_AAC_MULT5("AVC_MP4_BL_CIF30_AAC_MULT5", r4),
    AVC_MP4_BL_CIF30_HEAAC_L2("AVC_MP4_BL_CIF30_HEAAC_L2", r4),
    AVC_MP4_BL_CIF30_MPEG1_L3("AVC_MP4_BL_CIF30_MPEG1_L3", r4),
    AVC_MP4_BL_CIF30_AC3("AVC_MP4_BL_CIF30_AC3", r4),
    AVC_MP4_BL_CIF30_AAC_LTP("AVC_MP4_BL_CIF30_AAC_LTP", r4),
    AVC_MP4_BL_CIF30_AAC_LTP_MULT5("AVC_MP4_BL_CIF30_AAC_LTP_MULT5", r4),
    AVC_MP4_BL_L2_CIF30_AAC("AVC_MP4_BL_L2_CIF30_AAC", r4),
    AVC_MP4_BL_CIF30_BSAC("AVC_MP4_BL_CIF30_BSAC", r4),
    AVC_MP4_BL_CIF30_BSAC_MULT5("AVC_MP4_BL_CIF30_BSAC_MULT5", r4),
    AVC_MP4_BL_CIF15_HEAAC("AVC_MP4_BL_CIF15_HEAAC", r4),
    AVC_MP4_BL_CIF15_AMR("AVC_MP4_BL_CIF15_AMR", r4),
    AVC_MP4_BL_CIF15_AAC("AVC_MP4_BL_CIF15_AAC", r4),
    AVC_MP4_BL_CIF15_AAC_520("AVC_MP4_BL_CIF15_AAC_520", r4),
    AVC_MP4_BL_CIF15_AAC_LTP("AVC_MP4_BL_CIF15_AAC_LTP", r4),
    AVC_MP4_BL_CIF15_AAC_LTP_520("AVC_MP4_BL_CIF15_AAC_LTP_520", r4),
    AVC_MP4_BL_CIF15_BSAC("AVC_MP4_BL_CIF15_BSAC", r4),
    AVC_MP4_BL_L12_CIF15_HEAAC("AVC_MP4_BL_L12_CIF15_HEAAC", r4),
    AVC_MP4_BL_L1B_QCIF15_HEAAC("AVC_MP4_BL_L1B_QCIF15_HEAAC", r4),
    AVC_TS_MP_SD_AAC_MULT5("AVC_TS_MP_SD_AAC_MULT5", r3),
    AVC_TS_MP_SD_AAC_MULT5_T("AVC_TS_MP_SD_AAC_MULT5_T", r3),
    AVC_TS_MP_SD_AAC_MULT5_ISO("AVC_TS_MP_SD_AAC_MULT5_ISO", r2),
    AVC_TS_MP_SD_HEAAC_L2("AVC_TS_MP_SD_HEAAC_L2", r3),
    AVC_TS_MP_SD_HEAAC_L2_T("AVC_TS_MP_SD_HEAAC_L2_T", r3),
    AVC_TS_MP_SD_HEAAC_L2_ISO("AVC_TS_MP_SD_HEAAC_L2_ISO", r2),
    AVC_TS_MP_SD_MPEG1_L3("AVC_TS_MP_SD_MPEG1_L3", r3),
    AVC_TS_MP_SD_MPEG1_L3_T("AVC_TS_MP_SD_MPEG1_L3_T", r3),
    AVC_TS_MP_SD_MPEG1_L3_ISO("AVC_TS_MP_SD_MPEG1_L3_ISO", r2),
    AVC_TS_MP_SD_AC3("AVC_TS_MP_SD_AC3", r3),
    AVC_TS_MP_SD_AC3_T("AVC_TS_MP_SD_AC3_T", r3),
    AVC_TS_MP_SD_AC3_ISO("AVC_TS_MP_SD_AC3_ISO", r2),
    AVC_TS_MP_SD_AAC_LTP("AVC_TS_MP_SD_AAC_LTP", r3),
    AVC_TS_MP_SD_AAC_LTP_T("AVC_TS_MP_SD_AAC_LTP_T", r3),
    AVC_TS_MP_SD_AAC_LTP_ISO("AVC_TS_MP_SD_AAC_LTP_ISO", r2),
    AVC_TS_MP_SD_AAC_LTP_MULT5("AVC_TS_MP_SD_AAC_LTP_MULT5", r3),
    AVC_TS_MP_SD_AAC_LTP_MULT5_T("AVC_TS_MP_SD_AAC_LTP_MULT5_T", r3),
    AVC_TS_MP_SD_AAC_LTP_MULT5_ISO("AVC_TS_MP_SD_AAC_LTP_MULT5_ISO", r2),
    AVC_TS_MP_SD_AAC_LTP_MULT7("AVC_TS_MP_SD_AAC_LTP_MULT7", r3),
    AVC_TS_MP_SD_AAC_LTP_MULT7_T("AVC_TS_MP_SD_AAC_LTP_MULT7_T", r3),
    AVC_TS_MP_SD_AAC_LTP_MULT7_ISO("AVC_TS_MP_SD_AAC_LTP_MULT7_ISO", r2),
    AVC_TS_MP_SD_BSAC("AVC_TS_MP_SD_BSAC", r3),
    AVC_TS_MP_SD_BSAC_T("AVC_TS_MP_SD_BSAC_T", r3),
    AVC_TS_MP_SD_BSAC_ISO("AVC_TS_MP_SD_BSAC_ISO", r2),
    AVC_TS_HD_24_AC3("AVC_TS_HD_24_AC3", r3),
    AVC_TS_HD_24_AC3_T("AVC_TS_HD_24_AC3_T", r3),
    AVC_TS_HD_24_AC3_ISO("AVC_TS_HD_24_AC3_ISO", r2),
    AVC_TS_HD_50_LPCM_T("AVC_TS_HD_50_LPCM_T", r3),
    AVC_TS_HD_50_AC3("AVC_TS_HD_50_AC3", r3),
    AVC_TS_HD_50_AC3_T("AVC_TS_HD_50_AC3_T", r3),
    AVC_TS_HD_50_AC3_ISO("AVC_TS_HD_50_AC3_ISO", r2),
    AVC_TS_HD_60_AC3("AVC_TS_HD_60_AC3", r3),
    AVC_TS_HD_60_AC3_T("AVC_TS_HD_60_AC3_T", r3),
    AVC_TS_HD_60_AC3_ISO("AVC_TS_HD_60_AC3_ISO", r2),
    AVC_TS_BL_CIF30_AAC_MULT5("AVC_TS_BL_CIF30_AAC_MULT5", r3),
    AVC_TS_BL_CIF30_AAC_MULT5_T("AVC_TS_BL_CIF30_AAC_MULT5_T", r3),
    AVC_TS_BL_CIF30_AAC_MULT5_ISO("AVC_TS_BL_CIF30_AAC_MULT5_ISO", r2),
    AVC_TS_BL_CIF30_HEAAC_L2("AVC_TS_BL_CIF30_HEAAC_L2", r3),
    AVC_TS_BL_CIF30_HEAAC_L2_T("AVC_TS_BL_CIF30_HEAAC_L2_T", r3),
    AVC_TS_BL_CIF30_HEAAC_L2_ISO("AVC_TS_BL_CIF30_HEAAC_L2_ISO", r2),
    AVC_TS_BL_CIF30_MPEG1_L3("AVC_TS_BL_CIF30_MPEG1_L3", r3),
    AVC_TS_BL_CIF30_MPEG1_L3_T("AVC_TS_BL_CIF30_MPEG1_L3_T", r3),
    AVC_TS_BL_CIF30_MPEG1_L3_ISO("AVC_TS_BL_CIF30_MPEG1_L3_ISO", r2),
    AVC_TS_BL_CIF30_AC3("AVC_TS_BL_CIF30_AC3", r3),
    AVC_TS_BL_CIF30_AC3_T("AVC_TS_BL_CIF30_AC3_T", r3),
    AVC_TS_BL_CIF30_AC3_ISO("AVC_TS_BL_CIF30_AC3_ISO", r2),
    AVC_TS_BL_CIF30_AAC_LTP("AVC_TS_BL_CIF30_AAC_LTP", r3),
    AVC_TS_BL_CIF30_AAC_LTP_T("AVC_TS_BL_CIF30_AAC_LTP_T", r3),
    AVC_TS_BL_CIF30_AAC_LTP_ISO("AVC_TS_BL_CIF30_AAC_LTP_ISO", r2),
    AVC_TS_BL_CIF30_AAC_LTP_MULT5("AVC_TS_BL_CIF30_AAC_LTP_MULT5", r3),
    AVC_TS_BL_CIF30_AAC_LTP_MULT5_T("AVC_TS_BL_CIF30_AAC_LTP_MULT5_T", r3),
    AVC_TS_BL_CIF30_AAC_LTP_MULT5_ISO("AVC_TS_BL_CIF30_AAC_LTP_MULT5_ISO", r2),
    AVC_TS_BL_CIF30_AAC_940("AVC_TS_BL_CIF30_AAC_940", r3),
    AVC_TS_BL_CIF30_AAC_940_T("AVC_TS_BL_CIF30_AAC_940_T", r3),
    AVC_TS_BL_CIF30_AAC_940_ISO("AVC_TS_BL_CIF30_AAC_940_ISO", r2),
    AVC_TS_MP_HD_AAC_MULT5("AVC_TS_MP_HD_AAC_MULT5", r3),
    AVC_TS_MP_HD_AAC_MULT5_T("AVC_TS_MP_HD_AAC_MULT5_T", r3),
    AVC_TS_MP_HD_AAC_MULT5_ISO("AVC_TS_MP_HD_AAC_MULT5_ISO", r2),
    AVC_TS_MP_HD_HEAAC_L2("AVC_TS_MP_HD_HEAAC_L2", r3),
    AVC_TS_MP_HD_HEAAC_L2_T("AVC_TS_MP_HD_HEAAC_L2_T", r3),
    AVC_TS_MP_HD_HEAAC_L2_ISO("AVC_TS_MP_HD_HEAAC_L2_ISO", r2),
    AVC_TS_MP_HD_MPEG1_L3("AVC_TS_MP_HD_MPEG1_L3", r3),
    AVC_TS_MP_HD_MPEG1_L3_T("AVC_TS_MP_HD_MPEG1_L3_T", r3),
    AVC_TS_MP_HD_MPEG1_L3_ISO("AVC_TS_MP_HD_MPEG1_L3_ISO", r2),
    AVC_TS_MP_HD_AC3("AVC_TS_MP_HD_AC3", r3),
    AVC_TS_MP_HD_AC3_T("AVC_TS_MP_HD_AC3_T", r3),
    AVC_TS_MP_HD_AC3_ISO("AVC_TS_MP_HD_AC3_ISO", r2),
    AVC_TS_MP_HD_AAC("AVC_TS_MP_HD_AAC", r3),
    AVC_TS_MP_HD_AAC_T("AVC_TS_MP_HD_AAC_T", r3),
    AVC_TS_MP_HD_AAC_ISO("AVC_TS_MP_HD_AAC_ISO", r2),
    AVC_TS_MP_HD_AAC_LTP("AVC_TS_MP_HD_AAC_LTP", r3),
    AVC_TS_MP_HD_AAC_LTP_T("AVC_TS_MP_HD_AAC_LTP_T", r3),
    AVC_TS_MP_HD_AAC_LTP_ISO("AVC_TS_MP_HD_AAC_LTP_ISO", r2),
    AVC_TS_MP_HD_AAC_LTP_MULT5("AVC_TS_MP_HD_AAC_LTP_MULT5", r3),
    AVC_TS_MP_HD_AAC_LTP_MULT5_T("AVC_TS_MP_HD_AAC_LTP_MULT5_T", r3),
    AVC_TS_MP_HD_AAC_LTP_MULT5_ISO("AVC_TS_MP_HD_AAC_LTP_MULT5_ISO", r2),
    AVC_TS_MP_HD_AAC_LTP_MULT7("AVC_TS_MP_HD_AAC_LTP_MULT7", r3),
    AVC_TS_MP_HD_AAC_LTP_MULT7_T("AVC_TS_MP_HD_AAC_LTP_MULT7_T", r3),
    AVC_TS_MP_HD_AAC_LTP_MULT7_ISO("AVC_TS_MP_HD_AAC_LTP_MULT7_ISO", r2),
    AVC_TS_BL_CIF15_AAC("AVC_TS_BL_CIF15_AAC", r3),
    AVC_TS_BL_CIF15_AAC_T("AVC_TS_BL_CIF15_AAC_T", r3),
    AVC_TS_BL_CIF15_AAC_ISO("AVC_TS_BL_CIF15_AAC_ISO", r2),
    AVC_TS_BL_CIF15_AAC_540("AVC_TS_BL_CIF15_AAC_540", r3),
    AVC_TS_BL_CIF15_AAC_540_T("AVC_TS_BL_CIF15_AAC_540_T", r3),
    AVC_TS_BL_CIF15_AAC_540_ISO("AVC_TS_BL_CIF15_AAC_540_ISO", r2),
    AVC_TS_BL_CIF15_AAC_LTP("AVC_TS_BL_CIF15_AAC_LTP", r3),
    AVC_TS_BL_CIF15_AAC_LTP_T("AVC_TS_BL_CIF15_AAC_LTP_T", r3),
    AVC_TS_BL_CIF15_AAC_LTP_ISO("AVC_TS_BL_CIF15_AAC_LTP_ISO", r2),
    AVC_TS_BL_CIF15_BSAC("AVC_TS_BL_CIF15_BSAC", r3),
    AVC_TS_BL_CIF15_BSAC_T("AVC_TS_BL_CIF15_BSAC_T", r3),
    AVC_TS_BL_CIF15_BSAC_ISO("AVC_TS_BL_CIF15_BSAC_ISO", r2),
    AVC_3GPP_BL_CIF30_AMR_WBplus("AVC_3GPP_BL_CIF30_AMR_WBplus", r5),
    AVC_3GPP_BL_CIF15_AMR_WBplus("AVC_3GPP_BL_CIF15_AMR_WBplus", r5),
    AVC_3GPP_BL_QCIF15_AAC("AVC_3GPP_BL_QCIF15_AAC", r5),
    AVC_3GPP_BL_QCIF15_AAC_LTP("AVC_3GPP_BL_QCIF15_AAC_LTP", r5),
    AVC_3GPP_BL_QCIF15_HEAAC("AVC_3GPP_BL_QCIF15_HEAAC", r5),
    AVC_3GPP_BL_QCIF15_AMR_WBplus("AVC_3GPP_BL_QCIF15_AMR_WBplus", r5),
    AVC_3GPP_BL_QCIF15_AMR("AVC_3GPP_BL_QCIF15_AMR", r5),
    AVC_MP4_LPCM("AVC_MP4_LPCM", r4),
    AVI(r2, DLNAMimeTypes.MIME_VIDEO_AVI),
    AVI_XMS(r2, DLNAMimeTypes.MIME_VIDEO_XMS_AVI),
    DIVX(r2, "video/divx"),
    MATROSKA("MATROSKA", DLNAMimeTypes.MIME_VIDEO_MATROSKA),
    MATROSKA_MKV("MATROSKA", DLNAMimeTypes.MIME_VIDEO_MKV),
    VC1_ASF_AP_L1_WMA("VC1_ASF_AP_L1_WMA", r6),
    VC1_ASF_AP_L2_WMA("VC1_ASF_AP_L2_WMA", r6),
    VC1_ASF_AP_L3_WMA("VC1_ASF_AP_L3_WMA", r6),
    VC1_ASF_AP_L1_WMA_WMV("VC1_ASF_AP_L1_WMA", r1),
    VC1_ASF_AP_L2_WMA_WMV("VC1_ASF_AP_L2_WMA", r1),
    VC1_ASF_AP_L3_WMA_WMV("VC1_ASF_AP_L3_WMA", r1);
    
    private String code;
    private String contentFormat;

    class DLNAMimeTypes {
        public static final String MIME_AUDIO_3GP = "audio/3gpp";
        public static final String MIME_AUDIO_ADTS = "audio/vnd.dlna.adts";
        public static final String MIME_AUDIO_ATRAC = "audio/x-sony-oma";
        public static final String MIME_AUDIO_DOLBY_DIGITAL = "audio/vnd.dolby.dd-raw";
        public static final String MIME_AUDIO_LPCM = "audio/L16";
        public static final String MIME_AUDIO_MPEG = "audio/mpeg";
        public static final String MIME_AUDIO_MPEG_4 = "audio/mp4";
        public static final String MIME_AUDIO_WMA = "audio/x-ms-wma";
        public static final String MIME_IMAGE_JPEG = "image/jpeg";
        public static final String MIME_IMAGE_PNG = "image/png";
        public static final String MIME_VIDEO_3GP = "video/3gpp";
        public static final String MIME_VIDEO_ASF = "video/x-ms-asf";
        public static final String MIME_VIDEO_AVI = "video/avi";
        public static final String MIME_VIDEO_DIVX = "video/divx";
        public static final String MIME_VIDEO_MATROSKA = "video/x-matroska";
        public static final String MIME_VIDEO_MKV = "video/x-mkv";
        public static final String MIME_VIDEO_MPEG = "video/mpeg";
        public static final String MIME_VIDEO_MPEG_4 = "video/mp4";
        public static final String MIME_VIDEO_MPEG_TS = "video/vnd.dlna.mpeg-tts";
        public static final String MIME_VIDEO_WMV = "video/x-ms-wmv";
        public static final String MIME_VIDEO_XMS_AVI = "video/x-msvideo";

        DLNAMimeTypes() {
        }
    }

    private DLNAProfiles(String str, String str2) {
        this.code = str;
        this.contentFormat = str2;
    }

    public String getCode() {
        return this.code;
    }

    public String getContentFormat() {
        return this.contentFormat;
    }

    public static DLNAProfiles valueOf(String str, String str2) {
        DLNAProfiles[] values;
        for (DLNAProfiles dLNAProfiles : values()) {
            if (dLNAProfiles.getCode().equals(str) && (str2.length() == 0 || dLNAProfiles.getContentFormat().equals(str2))) {
                return dLNAProfiles;
            }
        }
        return null;
    }
}
