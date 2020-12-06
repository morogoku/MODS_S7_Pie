.class public Lcom/android/server/asks/PolicyConvert;
.super Ljava/lang/Object;
.source "PolicyConvert.java"


# instance fields
.field private final GRANT_TYPE:I

.field private final REVOKE_TYPE:I

.field private TAG:Ljava/lang/String;

.field private pkgInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/asks/PolicyConvert;->pkgInfos:Ljava/util/Map;

    const-string v0, "AASA_PolicyConvert "

    iput-object v0, p0, Lcom/android/server/asks/PolicyConvert;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/asks/PolicyConvert;->REVOKE_TYPE:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/asks/PolicyConvert;->GRANT_TYPE:I

    return-void
.end method

.method private AASA()V
    .registers 20

    move-object/from16 v7, p0

    const-string v1, "0"

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v8, v0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v9, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    move-object v6, v0

    :try_start_16
    new-instance v10, Ljava/io/File;

    const-string v11, "/data/system/.aasa/AASApackages.xml"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v10

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_15c

    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object v5, v10

    new-instance v10, Ljava/io/BufferedReader;

    invoke-direct {v10, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v6, v10

    const-string v10, ""

    const-string v11, ""

    nop

    :goto_35
    move-object v12, v0

    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    if-eqz v0, :cond_15c

    const-string v0, "<AASA VERSION=\""

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v13, 0x0

    if-eqz v0, :cond_71

    const-string v0, "<AASA VERSION=\""

    invoke-direct {v7, v10, v0}, Lcom/android/server/asks/PolicyConvert;->parseToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    const-string v0, "\""

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_53} :catch_179
    .catchall {:try_start_16 .. :try_end_53} :catchall_173

    move v15, v0

    const/4 v0, -0x1

    if-ne v15, v0, :cond_6c

    nop

    :try_start_58
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5c

    goto :goto_61

    :catch_5c
    move-exception v0

    move-object v13, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_61
    nop

    :try_start_62
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_66

    goto :goto_6b

    :catch_66
    move-exception v0

    move-object v13, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_6b
    return-void

    :cond_6c
    :try_start_6c
    invoke-virtual {v14, v13, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_70} :catch_179
    .catchall {:try_start_6c .. :try_end_70} :catchall_173

    move-object v1, v0

    :cond_71
    :try_start_71
    const-string v0, "<BlockBySPD>"

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7c

    const/4 v0, 0x1

    :goto_7a
    move v2, v0

    goto :goto_86

    :cond_7c
    const-string v0, "</BlockBySPD>"

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_86

    const/4 v0, 0x0

    goto :goto_7a

    :cond_86
    :goto_86
    const-string v0, "<GrantSharedDenied>"

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_91

    const/4 v0, 0x1

    :goto_8f
    move v3, v0

    goto :goto_9b

    :cond_91
    const-string v0, "</GrantSharedDenied>"

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9b

    const/4 v0, 0x0

    goto :goto_8f

    :cond_9b
    :goto_9b
    const-string v0, "<PKG>"

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_a1} :catch_158
    .catchall {:try_start_71 .. :try_end_a1} :catchall_152

    if-eqz v0, :cond_b5

    :try_start_a3
    const-string v0, "<PKG>"

    invoke-direct {v7, v10, v0}, Lcom/android/server/asks/PolicyConvert;->parseToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v14, "<"

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_b3} :catch_179
    .catchall {:try_start_a3 .. :try_end_b3} :catchall_173

    move-object v0, v15

    move-object v11, v0

    :cond_b5
    :try_start_b5
    const-string v0, "<PM>"

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_100

    const-string v0, "<PM>"

    invoke-direct {v7, v10, v0}, Lcom/android/server/asks/PolicyConvert;->parseToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v14, "<"

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x0

    if-eqz v2, :cond_ce

    move-object v15, v8

    goto :goto_d1

    :cond_ce
    if-eqz v3, :cond_d1

    move-object v15, v9

    :cond_d1
    :goto_d1
    invoke-interface {v15, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_ed

    invoke-interface {v15, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;
    :try_end_dd
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_dd} :catch_158
    .catchall {:try_start_b5 .. :try_end_dd} :catchall_152

    move-object/from16 v12, v16

    move-object/from16 v17, v1

    :try_start_e1
    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v15, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v12

    goto :goto_103

    :cond_ed
    move-object/from16 v17, v1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v15, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    goto :goto_103

    :cond_100
    move-object/from16 v17, v1

    move-object v0, v12

    :goto_103
    const-string v1, "<DATE>"

    invoke-virtual {v10, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_148

    const-string v1, "<DATE>"

    invoke-direct {v7, v10, v1}, Lcom/android/server/asks/PolicyConvert;->parseToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v12, "<"

    invoke-virtual {v1, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    const/4 v14, 0x0

    if-eqz v2, :cond_11c

    move-object v14, v8

    goto :goto_11f

    :cond_11c
    if-eqz v3, :cond_11f

    move-object v14, v9

    :cond_11f
    :goto_11f
    invoke-interface {v14, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_137

    invoke-interface {v14, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    move-object v0, v15

    invoke-virtual {v1, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v14, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_147

    :cond_137
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v15

    invoke-virtual {v1, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v14, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_147
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_147} :catch_14e
    .catchall {:try_start_e1 .. :try_end_147} :catchall_14c

    :goto_147
    nop

    :cond_148
    move-object/from16 v1, v17

    goto/16 :goto_35

    :catchall_14c
    move-exception v0

    goto :goto_176

    :catch_14e
    move-exception v0

    move-object/from16 v1, v17

    goto :goto_17a

    :catchall_152
    move-exception v0

    move-object/from16 v17, v1

    move-object v1, v0

    goto/16 :goto_228

    :catch_158
    move-exception v0

    move-object/from16 v17, v1

    goto :goto_17a

    :cond_15c
    if-eqz v6, :cond_167

    :try_start_15e
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_161
    .catch Ljava/io/IOException; {:try_start_15e .. :try_end_161} :catch_162

    goto :goto_167

    :catch_162
    move-exception v0

    move-object v10, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_167
    :goto_167
    if-eqz v5, :cond_196

    :try_start_169
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_16c
    .catch Ljava/io/IOException; {:try_start_169 .. :try_end_16c} :catch_16d

    goto :goto_18f

    :catch_16d
    move-exception v0

    move-object v10, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_18f

    :catchall_173
    move-exception v0

    move-object/from16 v17, v1

    :goto_176
    move-object v1, v0

    goto/16 :goto_228

    :catch_179
    move-exception v0

    :goto_17a
    :try_start_17a
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v10, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_17f
    .catchall {:try_start_17a .. :try_end_17f} :catchall_173

    if-eqz v6, :cond_18a

    :try_start_181
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_184
    .catch Ljava/io/IOException; {:try_start_181 .. :try_end_184} :catch_185

    goto :goto_18a

    :catch_185
    move-exception v0

    move-object v10, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_18a
    :goto_18a
    if-eqz v5, :cond_196

    :try_start_18c
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_18f
    .catch Ljava/io/IOException; {:try_start_18c .. :try_end_18f} :catch_190

    :goto_18f
    goto :goto_196

    :catch_190
    move-exception v0

    move-object v10, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_18f

    :cond_196
    :goto_196
    move-object v0, v1

    move v10, v2

    move v12, v3

    move-object v11, v4

    move-object v13, v5

    move-object v14, v6

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1d3

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1aa
    move-object v15, v1

    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Ljava/util/ArrayList;

    iget-object v5, v7, Lcom/android/server/asks/PolicyConvert;->pkgInfos:Ljava/util/Map;

    const/16 v17, 0x0

    move-object v1, v7

    move-object/from16 v2, v16

    move-object v3, v6

    move-object v4, v0

    move-object/from16 v18, v6

    move/from16 v6, v17

    invoke-direct/range {v1 .. v6}, Lcom/android/server/asks/PolicyConvert;->MakeString(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    nop

    move-object v1, v15

    goto :goto_1aa

    :cond_1d3
    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_227

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e1
    move-object v15, v1

    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_227

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    invoke-interface {v8, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20c

    iget-object v1, v7, Lcom/android/server/asks/PolicyConvert;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has blocked data."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_225

    :cond_20c
    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Ljava/util/ArrayList;

    iget-object v5, v7, Lcom/android/server/asks/PolicyConvert;->pkgInfos:Ljava/util/Map;

    const/16 v17, 0x1

    move-object v1, v7

    move-object/from16 v2, v16

    move-object v3, v6

    move-object v4, v0

    move-object/from16 v18, v6

    move/from16 v6, v17

    invoke-direct/range {v1 .. v6}, Lcom/android/server/asks/PolicyConvert;->MakeString(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    nop

    :goto_225
    move-object v1, v15

    goto :goto_1e1

    :cond_227
    return-void

    :goto_228
    if-eqz v6, :cond_233

    :try_start_22a
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_22d
    .catch Ljava/io/IOException; {:try_start_22a .. :try_end_22d} :catch_22e

    goto :goto_233

    :catch_22e
    move-exception v0

    move-object v10, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_233
    :goto_233
    if-eqz v5, :cond_23e

    :try_start_235
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_238
    .catch Ljava/io/IOException; {:try_start_235 .. :try_end_238} :catch_239

    goto :goto_23e

    :catch_239
    move-exception v0

    move-object v10, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_23e
    :goto_23e
    throw v1
.end method

.method private MakeString(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_15

    :cond_f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    :goto_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "        <emmode value=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"/>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private MakeString(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_84

    const/4 v1, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/util/ArrayList;

    goto :goto_24

    :cond_1e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    :goto_24
    const-string v2, "DELETE"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "        <delete version=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" datelimit=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\"/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_77

    :cond_4e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "        <restrict version=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" type=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" datelimit=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" from=\"Token\"/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_77
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p5, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_84
    return-void
.end method

.method private MakeString(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p4, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_15

    :cond_f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    :goto_15
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1d

    return-void

    :cond_1d
    const/4 v1, 0x1

    if-nez p5, :cond_3a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "        <restrict version=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" type=\"REVOKE\" datelimit=\"00000000\" from=\"Policy\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5c

    :cond_3a
    if-ne p5, v1, :cond_5c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "        <restrict version=\"20200220\" type=\"REVOKE\" datelimit=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" from=\"AASA\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5c
    :goto_5c
    nop

    :goto_5d
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_85

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "            <permission value=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\"/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5d

    :cond_85
    const-string v1, "        </restrict>"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p4, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private RestrictPackages()V
    .registers 16

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v5

    :try_start_f
    new-instance v7, Ljava/io/File;

    const-string v8, "/data/system/.aasa/RestrictPackages.xml"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v7

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_dd

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object v3, v7

    new-instance v7, Ljava/io/BufferedReader;

    invoke-direct {v7, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v4, v7

    const-string v7, ""

    const-string v8, ""

    const/4 v9, 0x0

    const/4 v10, 0x0

    :cond_2f
    :goto_2f
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    if-eqz v11, :cond_dd

    const-string v11, "<DATELIMIT value="

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5c

    const-string v11, "<DATELIMIT value=\""

    invoke-direct {p0, v7, v11}, Lcom/android/server/asks/PolicyConvert;->parseToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_59

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_59

    invoke-virtual {v11, v5, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    move-object v8, v13

    goto :goto_2f

    :cond_59
    const/4 v6, 0x0

    goto/16 :goto_dd

    :cond_5c
    const-string v11, "<DELETE>"

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6b

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v11

    goto :goto_2f

    :cond_6b
    const-string v11, "<DENY>"

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_7a

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v11

    goto :goto_2f

    :cond_7a
    const-string v11, "<PKG value="

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_97

    const-string v11, "<PKG value=\""

    invoke-direct {p0, v7, v11}, Lcom/android/server/asks/PolicyConvert;->parseToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v9, :cond_8f

    if-nez v10, :cond_8f

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8f
    if-eqz v10, :cond_96

    if-nez v9, :cond_96

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_96
    goto :goto_2f

    :cond_97
    const-string v11, "</DELETE>"

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_b3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_b0

    if-eqz v9, :cond_b0

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_b0

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b0
    const/4 v9, 0x0

    goto/16 :goto_2f

    :cond_b3
    const-string v11, "</DENY>"

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_cf

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_cc

    if-eqz v10, :cond_cc

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_cc

    invoke-interface {v1, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_cc
    const/4 v10, 0x0

    goto/16 :goto_2f

    :cond_cf
    const-string v11, "</DATELIMIT>"

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2f

    const-string v11, ""
    :try_end_d9
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_d9} :catch_f5
    .catchall {:try_start_f .. :try_end_d9} :catchall_f2

    move-object v8, v11

    const/4 v6, 0x1

    goto/16 :goto_2f

    :cond_dd
    :goto_dd
    if-eqz v4, :cond_e7

    :try_start_df
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_e2
    .catch Ljava/io/IOException; {:try_start_df .. :try_end_e2} :catch_e3

    goto :goto_e7

    :catch_e3
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    :cond_e7
    :goto_e7
    if-eqz v3, :cond_10b

    :try_start_e9
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_ec
    .catch Ljava/io/IOException; {:try_start_e9 .. :try_end_ec} :catch_ed

    :goto_ec
    goto :goto_10b

    :catch_ed
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_ec

    :catchall_f2
    move-exception v5

    goto/16 :goto_16a

    :catch_f5
    move-exception v5

    :try_start_f6
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7, v5}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_fb
    .catchall {:try_start_f6 .. :try_end_fb} :catchall_f2

    if-eqz v4, :cond_105

    :try_start_fd
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_100
    .catch Ljava/io/IOException; {:try_start_fd .. :try_end_100} :catch_101

    goto :goto_105

    :catch_101
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    :cond_105
    :goto_105
    if-eqz v3, :cond_10b

    :try_start_107
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_10a
    .catch Ljava/io/IOException; {:try_start_107 .. :try_end_10a} :catch_ed

    goto :goto_ec

    :cond_10b
    :goto_10b
    if-eqz v6, :cond_169

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_13b

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_11b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_13b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v14, v8

    check-cast v14, Ljava/util/ArrayList;

    const-string v10, "DELETE"

    const-string v12, "00000000"

    iget-object v13, p0, Lcom/android/server/asks/PolicyConvert;->pkgInfos:Ljava/util/Map;

    move-object v8, p0

    move-object v9, v14

    move-object v11, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/server/asks/PolicyConvert;->MakeString(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_11b

    :cond_13b
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_169

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_149
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_169

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v14, v8

    check-cast v14, Ljava/util/ArrayList;

    const-string v10, "DENY"

    const-string v12, "00000000"

    iget-object v13, p0, Lcom/android/server/asks/PolicyConvert;->pkgInfos:Ljava/util/Map;

    move-object v8, p0

    move-object v9, v14

    move-object v11, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/server/asks/PolicyConvert;->MakeString(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_149

    :cond_169
    return-void

    :goto_16a
    if-eqz v4, :cond_174

    :try_start_16c
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_16f
    .catch Ljava/io/IOException; {:try_start_16c .. :try_end_16f} :catch_170

    goto :goto_174

    :catch_170
    move-exception v7

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    :cond_174
    :goto_174
    if-eqz v3, :cond_17e

    :try_start_176
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_179
    .catch Ljava/io/IOException; {:try_start_176 .. :try_end_179} :catch_17a

    goto :goto_17e

    :catch_17a
    move-exception v7

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    :cond_17e
    :goto_17e
    throw v5
.end method

.method private deleteFiles()V
    .registers 4

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/.aasa/AASApolicy/AASA.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_10
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/.aasa/AASApolicy/AASA-TEMP.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_21
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/.aasa/RestrictPackages.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_32
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/.aasa/AASApackages.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_43
    return-void
.end method

.method private isASKSxml()Z
    .registers 3

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/.aasa/asks.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    return v1

    :cond_f
    const/4 v1, 0x0

    return v1
.end method

.method private makeASKSxml(Ljava/util/Map;Ljava/lang/String;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/asks/PolicyConvert;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move v5, v1

    :goto_33
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_58

    iget-object v6, p0, Lcom/android/server/asks/PolicyConvert;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_33

    :cond_58
    goto :goto_a

    :cond_59
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/system/.aasa/asks.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_62
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_f2

    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    move-object v4, v6

    new-instance v6, Ljava/io/BufferedWriter;

    invoke-direct {v6, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v5, v6

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<asks version=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\">\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    :goto_95
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_ec

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    <package name=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\">\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/asks/PolicyConvert;->pkgInfos:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    move v9, v1

    :goto_c3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_e6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_c3

    :cond_e6
    const-string v9, "    </package>\n"

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_95

    :cond_ec
    const-string v1, "</asks>\n"

    invoke-virtual {v5, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_f1
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_f1} :catch_fd
    .catchall {:try_start_62 .. :try_end_f1} :catchall_fb

    const/4 v2, 0x1

    :cond_f2
    if-eqz v5, :cond_fa

    :try_start_f4
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_f7
    .catch Ljava/io/IOException; {:try_start_f4 .. :try_end_f7} :catch_f8

    goto :goto_fa

    :catch_f8
    move-exception v1

    goto :goto_11b

    :cond_fa
    :goto_fa
    goto :goto_11b

    :catchall_fb
    move-exception v1

    goto :goto_11c

    :catch_fd
    move-exception v1

    const/4 v2, 0x0

    :try_start_ff
    iget-object v6, p0, Lcom/android/server/asks/PolicyConvert;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ERROR::"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_115
    .catchall {:try_start_ff .. :try_end_115} :catchall_fb

    if-eqz v5, :cond_fa

    :try_start_117
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_11a
    .catch Ljava/io/IOException; {:try_start_117 .. :try_end_11a} :catch_f8

    goto :goto_fa

    :goto_11b
    return v2

    :goto_11c
    nop

    if-eqz v5, :cond_125

    :try_start_11f
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_122
    .catch Ljava/io/IOException; {:try_start_11f .. :try_end_122} :catch_123

    goto :goto_125

    :catch_123
    move-exception v6

    nop

    :cond_125
    :goto_125
    throw v1
.end method

.method private parseToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1b

    array-length v3, v1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1b

    const/4 v3, 0x1

    aget-object v3, v1, v3

    const-string v4, "\"/>"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1b

    const/4 v3, 0x0

    aget-object v0, v2, v3

    :cond_1b
    return-object v0
.end method


# virtual methods
.method public convert(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/asks/PolicyConvert;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "working.."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/asks/PolicyConvert;->AASA()V

    invoke-direct {p0}, Lcom/android/server/asks/PolicyConvert;->RestrictPackages()V

    iget-object v0, p0, Lcom/android/server/asks/PolicyConvert;->pkgInfos:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lcom/android/server/asks/PolicyConvert;->makeASKSxml(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-direct {p0}, Lcom/android/server/asks/PolicyConvert;->deleteFiles()V

    :cond_19
    iget-object v1, p0, Lcom/android/server/asks/PolicyConvert;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "end"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method
