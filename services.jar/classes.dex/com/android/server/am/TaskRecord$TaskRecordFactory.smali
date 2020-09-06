.class Lcom/android/server/am/TaskRecord$TaskRecordFactory;
.super Ljava/lang/Object;
.source "TaskRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/TaskRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TaskRecordFactory"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method create(Lcom/android/server/am/ActivityManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;Ljava/util/ArrayList;JZLandroid/app/ActivityManager$TaskDescription;IIIIILjava/lang/String;IZZZII)Lcom/android/server/am/TaskRecord;
    .registers 65
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityManagerService;",
            "I",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            "ZZZII",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;JZ",
            "Landroid/app/ActivityManager$TaskDescription;",
            "IIIII",
            "Ljava/lang/String;",
            "IZZZII)",
            "Lcom/android/server/am/TaskRecord;"
        }
    .end annotation

    new-instance v32, Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-wide/from16 v16, p16

    move/from16 v18, p18

    move-object/from16 v19, p19

    move/from16 v20, p20

    move/from16 v21, p21

    move/from16 v22, p22

    move/from16 v23, p23

    move/from16 v24, p24

    move-object/from16 v25, p25

    move/from16 v26, p26

    move/from16 v27, p27

    move/from16 v28, p28

    move/from16 v29, p29

    move/from16 v30, p30

    move/from16 v31, p31

    invoke-direct/range {v0 .. v31}, Lcom/android/server/am/TaskRecord;-><init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;Ljava/util/ArrayList;JZLandroid/app/ActivityManager$TaskDescription;IIIIILjava/lang/String;IZZZII)V

    return-object v32
.end method

.method create(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;)Lcom/android/server/am/TaskRecord;
    .registers 13

    new-instance v6, Lcom/android/server/am/TaskRecord;

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/TaskRecord;-><init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;)V

    return-object v6
.end method

.method create(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/am/TaskRecord;
    .registers 15

    new-instance v7, Lcom/android/server/am/TaskRecord;

    move-object v0, v7

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/TaskRecord;-><init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V

    return-object v7
.end method

.method handleUnknownTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restoreTask: Unexpected name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/TaskRecord;
    .registers 72
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v1, p1

    const/4 v0, 0x0

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, -0x1

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x1

    const/16 v21, -0x1

    move-object/from16 v36, v2

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    move-object/from16 v37, v0

    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v0}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    move-object/from16 v38, v0

    const/4 v0, -0x1

    const/16 v22, 0x0

    const/16 v23, -0x1

    const/16 v24, -0x1

    const/16 v25, -0x1

    const-string v26, ""

    const/16 v27, 0x4

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, -0x1

    const/16 v31, -0x1

    const/16 v32, 0x0

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v33

    move/from16 v39, v15

    const/4 v15, 0x1

    add-int/lit8 v33, v33, -0x1

    move/from16 v40, v0

    move-object/from16 v41, v4

    move/from16 v54, v5

    move-object/from16 v44, v6

    move-object/from16 v46, v7

    move/from16 v55, v9

    move/from16 v56, v10

    move/from16 v57, v11

    move/from16 v58, v12

    move v11, v13

    move v10, v14

    move-object/from16 v50, v17

    move-wide/from16 v52, v18

    move/from16 v14, v21

    move/from16 v42, v22

    move/from16 v43, v23

    move/from16 v45, v24

    move/from16 v47, v25

    move-object/from16 v51, v26

    move/from16 v4, v27

    move-object/from16 v12, v29

    move/from16 v48, v30

    move/from16 v49, v31

    move/from16 v13, v32

    move/from16 v59, v39

    move/from16 v39, v20

    :goto_80
    move/from16 v0, v33

    if-ltz v0, :cond_2cb

    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v17

    const/4 v5, -0x1

    sparse-switch v17, :sswitch_data_416

    goto/16 :goto_1ec

    :sswitch_96
    const-string/jumbo v6, "root_has_reset"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ec

    const/4 v6, 0x6

    goto/16 :goto_1ed

    :sswitch_a2
    const-string/jumbo v6, "real_activity"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ec

    move v6, v15

    goto/16 :goto_1ed

    :sswitch_ae
    const-string/jumbo v6, "never_relinquish_identity"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ec

    const/16 v6, 0xf

    goto/16 :goto_1ed

    :sswitch_bb
    const-string v6, "calling_package"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ec

    const/16 v6, 0x15

    goto/16 :goto_1ed

    :sswitch_c7
    const-string/jumbo v6, "persist_task_version"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ec

    const/16 v6, 0x1b

    goto/16 :goto_1ed

    :sswitch_d4
    const-string/jumbo v6, "last_description"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ec

    const/16 v6, 0xd

    goto/16 :goto_1ed

    :sswitch_e1
    const-string v6, "affinity"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ec

    const/4 v6, 0x4

    goto/16 :goto_1ed

    :sswitch_ec
    const-string/jumbo v6, "min_width"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ec

    const/16 v6, 0x19

    goto/16 :goto_1ed

    :sswitch_f9
    const-string/jumbo v6, "prev_affiliation"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ec

    const/16 v6, 0x11

    goto/16 :goto_1ed

    :sswitch_106
    const-string/jumbo v6, "task_type"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ec

    const/16 v6, 0xc

    goto/16 :goto_1ed

    :sswitch_113
    const-string v6, "calling_uid"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ec

    const/16 v6, 0x14

    goto/16 :goto_1ed

    :sswitch_11f
    const-string/jumbo v6, "user_id"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ec

    const/16 v6, 0x9

    goto/16 :goto_1ed

    :sswitch_12c
    const-string/jumbo v6, "root_affinity"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ec

    const/4 v6, 0x5

    goto/16 :goto_1ed

    :sswitch_138
    const-string/jumbo v6, "supports_picture_in_picture"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ec

    const/16 v6, 0x17

    goto/16 :goto_1ed

    :sswitch_145
    const-string v6, "auto_remove_recents"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ec

    const/4 v6, 0x7

    goto/16 :goto_1ed

    :sswitch_150
    const-string/jumbo v6, "orig_activity"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ec

    const/4 v6, 0x3

    goto/16 :goto_1ed

    :sswitch_15c
    const-string/jumbo v6, "non_fullscreen_bounds"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ec

    const/16 v6, 0x18

    goto/16 :goto_1ed

    :sswitch_169
    const-string/jumbo v6, "min_height"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ec

    const/16 v6, 0x1a

    goto/16 :goto_1ed

    :sswitch_176
    const-string/jumbo v6, "resize_mode"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ec

    const/16 v6, 0x16

    goto/16 :goto_1ed

    :sswitch_183
    const-string/jumbo v6, "effective_uid"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ec

    const/16 v6, 0xb

    goto :goto_1ed

    :sswitch_18f
    const-string/jumbo v6, "user_setup_complete"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ec

    const/16 v6, 0xa

    goto :goto_1ed

    :sswitch_19b
    const-string/jumbo v6, "task_affiliation"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ec

    const/16 v6, 0x10

    goto :goto_1ed

    :sswitch_1a7
    const-string/jumbo v6, "real_activity_suspended"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ec

    const/4 v6, 0x2

    goto :goto_1ed

    :sswitch_1b2
    const-string/jumbo v6, "task_affiliation_color"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ec

    const/16 v6, 0x13

    goto :goto_1ed

    :sswitch_1be
    const-string/jumbo v6, "next_affiliation"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ec

    const/16 v6, 0x12

    goto :goto_1ed

    :sswitch_1ca
    const-string/jumbo v6, "task_id"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ec

    const/4 v6, 0x0

    goto :goto_1ed

    :sswitch_1d5
    const-string/jumbo v6, "last_time_moved"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ec

    const/16 v6, 0xe

    goto :goto_1ed

    :sswitch_1e1
    const-string v6, "asked_compat_mode"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ec

    const/16 v6, 0x8

    goto :goto_1ed

    :cond_1ec
    :goto_1ec
    move v6, v5

    :goto_1ed
    packed-switch v6, :pswitch_data_488

    const-string/jumbo v5, "task_description_"

    invoke-virtual {v7, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2aa

    move-object/from16 v6, v38

    invoke-virtual {v6, v7, v9}, Landroid/app/ActivityManager$TaskDescription;->restoreFromXml(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v63, v6

    goto/16 :goto_2c4

    :pswitch_202
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    nop

    move v13, v5

    goto/16 :goto_2a0

    :pswitch_20a
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v49

    goto/16 :goto_2a0

    :pswitch_210
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v48

    goto/16 :goto_2a0

    :pswitch_216
    invoke-static {v9}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v5

    nop

    move-object v12, v5

    goto/16 :goto_2a0

    :pswitch_21e
    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    nop

    move/from16 v28, v5

    goto/16 :goto_2a0

    :pswitch_227
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_2a0

    :pswitch_22d
    move-object/from16 v51, v9

    goto/16 :goto_2a0

    :pswitch_231
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v47

    goto/16 :goto_2a0

    :pswitch_237
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v42

    goto/16 :goto_2a0

    :pswitch_23d
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v45

    goto/16 :goto_2a0

    :pswitch_243
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v43

    goto/16 :goto_2a0

    :pswitch_249
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v40

    goto :goto_2a0

    :pswitch_24e
    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v39

    goto :goto_2a0

    :pswitch_253
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v52

    goto :goto_2a0

    :pswitch_258
    move-object/from16 v50, v9

    goto :goto_2a0

    :pswitch_25b
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    nop

    move v11, v5

    goto :goto_2a0

    :pswitch_262
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    nop

    move/from16 v16, v5

    goto :goto_2a0

    :pswitch_26a
    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v59

    goto :goto_2a0

    :pswitch_26f
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    goto :goto_2a0

    :pswitch_274
    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v58

    goto :goto_2a0

    :pswitch_279
    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v57

    goto :goto_2a0

    :pswitch_27e
    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v56

    goto :goto_2a0

    :pswitch_283
    move-object v5, v9

    const/4 v6, 0x1

    nop

    move-object v8, v5

    move/from16 v55, v6

    goto :goto_2a0

    :pswitch_28a
    move-object/from16 v46, v9

    goto :goto_2a0

    :pswitch_28d
    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v44

    goto :goto_2a0

    :pswitch_292
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v54

    goto :goto_2a0

    :pswitch_29b
    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v41

    nop

    :cond_2a0
    :goto_2a0
    move-object/from16 v63, v38

    goto :goto_2c4

    :pswitch_2a3
    if-ne v14, v5, :cond_2a0

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    goto :goto_2a0

    :cond_2aa
    move-object/from16 v6, v38

    const-string v5, "ActivityManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v63, v6

    const-string v6, "TaskRecord: Unknown attribute="

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2c4
    add-int/lit8 v33, v0, -0x1

    move-object/from16 v38, v63

    const/4 v15, 0x1

    goto/16 :goto_80

    :cond_2cb
    move-object/from16 v63, v38

    :goto_2cd
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v15, v0

    const/4 v5, 0x1

    if-eq v0, v5, :cond_327

    const/4 v5, 0x3

    if-ne v15, v5, :cond_2de

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-lt v0, v2, :cond_327

    :cond_2de
    const/4 v5, 0x2

    if-ne v15, v5, :cond_324

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "affinity_intent"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f6

    invoke-static/range {p1 .. p1}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v5

    move-object/from16 v9, p0

    move-object/from16 v36, v5

    goto :goto_323

    :cond_2f6
    const-string/jumbo v5, "intent"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_308

    invoke-static/range {p1 .. p1}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v5

    move-object/from16 v9, p0

    move-object/from16 v37, v5

    goto :goto_323

    :cond_308
    const-string v5, "activity"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31e

    nop

    invoke-static/range {p1 .. p2}, Lcom/android/server/am/ActivityRecord;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    if-eqz v5, :cond_31a

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31a
    nop

    move-object/from16 v9, p0

    goto :goto_323

    :cond_31e
    move-object/from16 v9, p0

    invoke-virtual {v9, v0, v1}, Lcom/android/server/am/TaskRecord$TaskRecordFactory;->handleUnknownTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_323
    goto :goto_2cd

    :cond_324
    move-object/from16 v9, p0

    goto :goto_2cd

    :cond_327
    move-object/from16 v9, p0

    if-nez v55, :cond_330

    move-object/from16 v0, v46

    :goto_32d
    move-object/from16 v38, v0

    goto :goto_33c

    :cond_330
    const-string v0, "@"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33a

    const/4 v0, 0x0

    goto :goto_32d

    :cond_33a
    move-object/from16 v38, v8

    :goto_33c
    if-gtz v16, :cond_38d

    if-eqz v37, :cond_343

    move-object/from16 v0, v37

    goto :goto_345

    :cond_343
    move-object/from16 v0, v36

    :goto_345
    move-object v5, v0

    const/4 v6, 0x0

    if-eqz v5, :cond_365

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    move-object v7, v0

    nop

    :try_start_34f
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v8, 0x2200

    invoke-interface {v7, v0, v8, v10}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_363

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_361
    .catch Landroid/os/RemoteException; {:try_start_34f .. :try_end_361} :catch_364

    move v0, v8

    move v6, v0

    :cond_363
    goto :goto_365

    :catch_364
    move-exception v0

    :cond_365
    :goto_365
    const-string v0, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Updating task #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ": effectiveUid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    goto :goto_38f

    :cond_38d
    move/from16 v0, v16

    :goto_38f
    const/4 v8, 0x1

    if-ge v13, v8, :cond_399

    if-ne v11, v8, :cond_3a3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3a3

    const/4 v4, 0x1

    goto :goto_3a3

    :cond_399
    const/4 v5, 0x3

    if-ne v4, v5, :cond_3a3

    const/4 v4, 0x2

    const/4 v5, 0x1

    move/from16 v60, v4

    move/from16 v61, v5

    goto :goto_3a7

    :cond_3a3
    :goto_3a3
    move/from16 v60, v4

    move/from16 v61, v28

    :goto_3a7
    move-object/from16 v7, p2

    iget-object v5, v7, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v4, v9

    move-object/from16 v62, v63

    move v6, v14

    move-object/from16 v7, v37

    move/from16 v16, v8

    move-object/from16 v8, v36

    move-object/from16 v9, v46

    move/from16 v63, v10

    move-object/from16 v10, v38

    move/from16 v64, v11

    move-object/from16 v11, v41

    move-object v1, v12

    move-object/from16 v12, v44

    move/from16 v65, v13

    move/from16 v13, v56

    move/from16 v66, v14

    move/from16 v14, v57

    move/from16 v67, v15

    move/from16 v68, v16

    move/from16 v15, v58

    move/from16 v16, v63

    move/from16 v17, v0

    move-object/from16 v18, v50

    move-object/from16 v19, v3

    move-wide/from16 v20, v52

    move/from16 v22, v39

    move-object/from16 v23, v62

    move/from16 v24, v40

    move/from16 v25, v43

    move/from16 v26, v45

    move/from16 v27, v42

    move/from16 v28, v47

    move-object/from16 v29, v51

    move/from16 v30, v60

    move/from16 v31, v61

    move/from16 v32, v54

    move/from16 v33, v59

    move/from16 v34, v48

    move/from16 v35, v49

    invoke-virtual/range {v4 .. v35}, Lcom/android/server/am/TaskRecord$TaskRecordFactory;->create(Lcom/android/server/am/ActivityManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;Ljava/util/ArrayList;JZLandroid/app/ActivityManager$TaskDescription;IIIIILjava/lang/String;IZZZII)Lcom/android/server/am/TaskRecord;

    move-result-object v4

    iput-object v1, v4, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v1}, Lcom/android/server/am/TaskRecord;->setBounds(Landroid/graphics/Rect;)I

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_405
    if-ltz v5, :cond_413

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v6, v4}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_405

    :cond_413
    return-object v4

    nop

    nop

    :sswitch_data_416
    .sparse-switch
        -0x7f3eb8a7 -> :sswitch_1e1
        -0x5ccdaff6 -> :sswitch_1d5
        -0x5ba06deb -> :sswitch_1ca
        -0x591a685c -> :sswitch_1be
        -0x4d0e36e6 -> :sswitch_1b2
        -0x43dc2f14 -> :sswitch_1a7
        -0x430d08ca -> :sswitch_19b
        -0x3a0f4851 -> :sswitch_18f
        -0x37680e48 -> :sswitch_183
        -0x3395d9b2 -> :sswitch_176
        -0x313f784c -> :sswitch_169
        -0x2a27c539 -> :sswitch_15c
        -0x2a0990b3 -> :sswitch_150
        -0x1df202b3 -> :sswitch_145
        -0x158140a0 -> :sswitch_138
        -0x9b3481b -> :sswitch_12c
        -0x8c511f1 -> :sswitch_11f
        -0x7e175ab -> :sswitch_113
        0xac8bdb4 -> :sswitch_106
        0x13bdcee4 -> :sswitch_f9
        0x2046b199 -> :sswitch_ec
        0x24172928 -> :sswitch_e1
        0x33cf43d3 -> :sswitch_d4
        0x3c12eca9 -> :sswitch_c7
        0x40756fcb -> :sswitch_bb
        0x56e1584e -> :sswitch_ae
        0x5bc3bc90 -> :sswitch_a2
        0x789a804d -> :sswitch_96
    .end sparse-switch

    :pswitch_data_488
    .packed-switch 0x0
        :pswitch_2a3
        :pswitch_29b
        :pswitch_292
        :pswitch_28d
        :pswitch_28a
        :pswitch_283
        :pswitch_27e
        :pswitch_279
        :pswitch_274
        :pswitch_26f
        :pswitch_26a
        :pswitch_262
        :pswitch_25b
        :pswitch_258
        :pswitch_253
        :pswitch_24e
        :pswitch_249
        :pswitch_243
        :pswitch_23d
        :pswitch_237
        :pswitch_231
        :pswitch_22d
        :pswitch_227
        :pswitch_21e
        :pswitch_216
        :pswitch_210
        :pswitch_20a
        :pswitch_202
    .end packed-switch
.end method
