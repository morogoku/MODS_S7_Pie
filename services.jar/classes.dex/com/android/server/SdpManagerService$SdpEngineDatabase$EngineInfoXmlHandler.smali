.class Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;
.super Ljava/lang/Object;
.source "SdpManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpManagerService$SdpEngineDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EngineInfoXmlHandler"
.end annotation


# static fields
.field private static final ATTR_ALIAS:Ljava/lang/String; = "alias"

.field private static final ATTR_ALIAS_IDX:I = 0x0

.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_FLAGS_IDX:I = 0x4

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_ID_IDX:I = 0x2

.field private static final ATTR_IS_MIGRATING:Ljava/lang/String; = "isMigrating"

.field private static final ATTR_IS_MIGRATING_IDX:I = 0x6

.field private static final ATTR_PKG_NAME:Ljava/lang/String; = "pkgName"

.field private static final ATTR_PKG_NAME_IDX:I = 0x1

.field private static final ATTR_USERID:Ljava/lang/String; = "userid"

.field private static final ATTR_USERID_IDX:I = 0x3

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final ATTR_VERSION_IDX:I = 0x5

.field private static final ENGINE_XML:Ljava/lang/String; = "SdpUser"

.field private static final TAG_USER:Ljava/lang/String; = "user"


# instance fields
.field final synthetic this$1:Lcom/android/server/SdpManagerService$SdpEngineDatabase;


# direct methods
.method private constructor <init>(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->this$1:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/android/server/SdpManagerService$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;-><init>(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->updateEngineInfoLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->removeEngineInfoLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v0

    return-object v0
.end method

.method private getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .registers 29

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v2

    move-object v2, v1

    move-object v1, v0

    const/4 v0, 0x3

    :goto_7
    add-int/lit8 v5, v0, -0x1

    if-lez v0, :cond_1d3

    const/4 v0, 0x0

    move v6, v0

    :try_start_d
    invoke-direct/range {p0 .. p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->getEngineInfoXmlFile(I)Lcom/android/internal/os/AtomicFile;

    move-result-object v7
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_11} :catch_19d
    .catchall {:try_start_d .. :try_end_11} :catchall_195

    move-object v2, v7

    :try_start_12
    invoke-virtual {v2}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v7

    move-object v4, v7

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v7

    invoke-virtual {v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-interface {v8, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    # getter for: Lcom/android/server/SdpManagerService;->EMPTY_STRING:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/SdpManagerService;->access$2700()Ljava/lang/String;

    move-result-object v9

    # getter for: Lcom/android/server/SdpManagerService;->EMPTY_STRING:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/SdpManagerService;->access$2700()Ljava/lang/String;

    move-result-object v10

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, 0x0

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v16
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_35} :catch_191
    .catchall {:try_start_12 .. :try_end_35} :catchall_189

    :goto_35
    move/from16 v17, v16

    const/4 v3, 0x1

    move-object/from16 v19, v2

    move/from16 v2, v17

    if-eq v2, v3, :cond_17f

    if-eqz v2, :cond_16a

    packed-switch v2, :pswitch_data_1d8

    :goto_43
    move/from16 v24, v2

    goto/16 :goto_16c

    :pswitch_47
    goto :goto_43

    :pswitch_48
    :try_start_48
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v20, v16

    const-string/jumbo v3, "user"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_167

    const-string v3, "alias"

    move-object/from16 v23, v0

    move/from16 v24, v2

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12c

    const-string/jumbo v0, "pkgName"

    const/4 v2, 0x1

    invoke-interface {v8, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12c

    const-string/jumbo v0, "id"

    const/4 v2, 0x2

    invoke-interface {v8, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12c

    const-string/jumbo v0, "userid"

    const/4 v3, 0x3

    invoke-interface {v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12c

    const-string/jumbo v0, "flags"

    const/4 v2, 0x4

    invoke-interface {v8, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12c

    const-string/jumbo v0, "version"

    const/4 v3, 0x5

    invoke-interface {v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12c

    const-string/jumbo v0, "isMigrating"

    const/4 v2, 0x6

    invoke-interface {v8, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12c

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    const/4 v3, 0x1

    invoke-interface {v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v10, v16

    nop

    const/4 v0, 0x2

    invoke-interface {v8, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v11, v0

    nop

    const/4 v3, 0x3

    invoke-interface {v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v12, v0

    nop

    const/4 v0, 0x4

    invoke-interface {v8, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v13, v0

    nop

    const/4 v0, 0x5

    invoke-interface {v8, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v14, v0

    nop

    invoke-interface {v8, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move v15, v0

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_126

    if-ltz v11, :cond_126

    if-ltz v12, :cond_126

    if-ltz v13, :cond_126

    if-ltz v14, :cond_126

    const/16 v25, 0x1

    goto :goto_128

    :cond_126
    const/16 v25, 0x0

    :goto_128
    move/from16 v0, v25

    move v6, v0

    goto :goto_12d

    :cond_12c
    const/4 v3, 0x3

    :goto_12d
    move-object v0, v9

    move v2, v11

    move/from16 v17, v12

    move/from16 v18, v13

    move/from16 v20, v14

    move/from16 v21, v15

    move-object v15, v10

    if-eqz v6, :cond_15e

    new-instance v22, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    const/4 v13, 0x1

    move-object/from16 v9, v22

    move-object v10, v0

    move v11, v2

    move/from16 v12, v17

    move/from16 v14, v18

    move-object v3, v15

    move/from16 v15, v20

    move/from16 v16, v21

    invoke-direct/range {v9 .. v16}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;-><init>(Ljava/lang/String;IIIIIZ)V

    move-object/from16 v1, v22

    invoke-virtual {v1, v3}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->setPackageName(Ljava/lang/String;)V

    move-object v9, v0

    move v11, v2

    move-object v10, v3

    move/from16 v12, v17

    move/from16 v13, v18

    move/from16 v14, v20

    move/from16 v15, v21

    goto :goto_16c

    :cond_15e
    move-object v3, v15

    new-instance v9, Ljava/lang/Exception;

    const-string v10, "Suspicious of damaged file..."

    invoke-direct {v9, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_167
    move/from16 v24, v2

    goto :goto_16c

    :cond_16a
    move/from16 v24, v2

    :goto_16c
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_170
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_170} :catch_17b
    .catchall {:try_start_48 .. :try_end_170} :catchall_177

    move/from16 v16, v0

    move-object/from16 v2, v19

    const/4 v0, 0x0

    goto/16 :goto_35

    :catchall_177
    move-exception v0

    move-object/from16 v3, p0

    goto :goto_19a

    :catch_17b
    move-exception v0

    move-object/from16 v2, v19

    goto :goto_19e

    :cond_17f
    move/from16 v24, v2

    if-eqz v4, :cond_188

    :try_start_183
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_186
    .catch Ljava/io/IOException; {:try_start_183 .. :try_end_186} :catch_187

    goto :goto_188

    :catch_187
    move-exception v0

    :cond_188
    :goto_188
    return-object v1

    :catchall_189
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v3, p0

    move-object v2, v1

    move-object v1, v0

    goto :goto_1cb

    :catch_191
    move-exception v0

    move-object/from16 v19, v2

    goto :goto_19e

    :catchall_195
    move-exception v0

    move-object/from16 v3, p0

    :goto_198
    move-object/from16 v19, v2

    :goto_19a
    move-object v2, v1

    move-object v1, v0

    goto :goto_1cb

    :catch_19d
    move-exception v0

    :goto_19e
    move-object/from16 v3, p0

    :try_start_1a0
    iget-object v7, v3, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->this$1:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    iget-object v7, v7, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->this$0:Lcom/android/server/SdpManagerService;

    const-string v8, "SdpManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EngineInfoXmlHandler :: Failed to get engine info... "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/server/SdpManagerService;->recordException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    invoke-static {v7, v8, v0, v9}, Lcom/android/server/SdpManagerService;->access$2600(Lcom/android/server/SdpManagerService;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_1ba
    .catchall {:try_start_1a0 .. :try_end_1ba} :catchall_1c9

    if-eqz v2, :cond_1be

    const/4 v0, 0x0

    move-object v2, v0

    :cond_1be
    if-eqz v4, :cond_1c5

    :try_start_1c0
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1c3
    .catch Ljava/io/IOException; {:try_start_1c0 .. :try_end_1c3} :catch_1c4

    goto :goto_1c5

    :catch_1c4
    move-exception v0

    :cond_1c5
    :goto_1c5
    nop

    move v0, v5

    goto/16 :goto_7

    :catchall_1c9
    move-exception v0

    goto :goto_198

    :goto_1cb
    if-eqz v4, :cond_1d2

    :try_start_1cd
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1d0
    .catch Ljava/io/IOException; {:try_start_1cd .. :try_end_1d0} :catch_1d1

    goto :goto_1d2

    :catch_1d1
    move-exception v0

    :cond_1d2
    :goto_1d2
    throw v1

    :cond_1d3
    move-object/from16 v3, p0

    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_1d8
    .packed-switch 0x2
        :pswitch_48
        :pswitch_47
    .end packed-switch
.end method

.method private getEngineInfoXmlFile(I)Lcom/android/internal/os/AtomicFile;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SdpUser"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/system/users/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5e

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-eqz v2, :cond_3e

    goto :goto_5e

    :cond_3e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t make directory - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SdpManagerService"

    invoke-static {v3, v2}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    :cond_5e
    :goto_5e
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/system/users/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/android/internal/os/AtomicFile;

    invoke-direct {v3, v2}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    return-object v3
.end method

.method private removeEngineInfoLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V
    .registers 6

    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->getEngineInfoXmlFile(I)Lcom/android/internal/os/AtomicFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicFile;->delete()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_2a

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v1, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t remove engine info file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2a
    return-void
.end method

.method private updateEngineInfoLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v3

    const/16 v4, -0x63

    :try_start_9
    invoke-direct {p0, v3}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->getEngineInfoXmlFile(I)Lcom/android/internal/os/AtomicFile;

    move-result-object v5
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_d} :catch_d3

    move-object v0, v5

    nop

    const/4 v5, 0x1

    move v6, v5

    :try_start_11
    invoke-virtual {v0}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v7

    move-object v1, v7

    new-instance v7, Ljava/io/BufferedOutputStream;

    invoke-direct {v7, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v2, v7

    new-instance v7, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v7}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    const-string v8, "UTF-8"

    invoke-interface {v7, v2, v8}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v7, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v8, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v7, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v5, "user"

    invoke-interface {v7, v9, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "alias"

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v9, v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "pkgName"

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v9, v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "id"

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v9, v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "userid"

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v9, v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "flags"

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getFlag()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v9, v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "version"

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getVersion()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v9, v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "isMigrating"

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isMigrating()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v9, v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "user"

    invoke-interface {v7, v9, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v0, v1}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_9f} :catch_a9
    .catchall {:try_start_11 .. :try_end_9f} :catchall_a7

    nop

    :try_start_a0
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a3} :catch_a4

    goto :goto_a6

    :catch_a4
    move-exception v5

    goto :goto_c4

    :cond_a6
    :goto_a6
    goto :goto_c4

    :catchall_a7
    move-exception v4

    goto :goto_c9

    :catch_a9
    move-exception v5

    :try_start_aa
    iget-object v7, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->this$1:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    iget-object v7, v7, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->this$0:Lcom/android/server/SdpManagerService;

    const-string v8, "SdpManagerService"

    const-string v9, "Failed to update engine info..."

    # invokes: Lcom/android/server/SdpManagerService;->recordException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    invoke-static {v7, v8, v5, v9}, Lcom/android/server/SdpManagerService;->access$2600(Lcom/android/server/SdpManagerService;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v1, :cond_bd

    invoke-virtual {v0, v1}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_bd
    .catchall {:try_start_aa .. :try_end_bd} :catchall_a7

    :cond_bd
    const/4 v6, 0x0

    if-eqz v2, :cond_a6

    :try_start_c0
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c3} :catch_a4

    goto :goto_a6

    :goto_c4
    if-eqz v6, :cond_c8

    const/4 v4, 0x0

    nop

    :cond_c8
    return v4

    :goto_c9
    nop

    if-eqz v2, :cond_d2

    :try_start_cc
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_cf
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_cf} :catch_d0

    goto :goto_d2

    :catch_d0
    move-exception v5

    nop

    :cond_d2
    :goto_d2
    throw v4

    :catch_d3
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    return v4
.end method
