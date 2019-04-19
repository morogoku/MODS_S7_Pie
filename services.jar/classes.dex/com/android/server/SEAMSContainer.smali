.class public abstract Lcom/android/server/SEAMSContainer;
.super Ljava/lang/Object;
.source "SEAMSContainer.java"


# static fields
.field public static final ACTION_SECONTAINER_ADDED:Ljava/lang/String; = "com.samsung.intent.action.SECONTAINER_ADDED"

.field public static final ACTION_SECONTAINER_REMOVED:Ljava/lang/String; = "com.samsung.intent.action.SECONTAINER_REMOVED"

.field public static final KNOXCONTAINER_START_SPACE:I = 0x1

.field public static final NONE:I = 0x0

.field public static final OTHER_CONTAINER_END_SPACE:I = 0x2bc

.field public static final OTHER_CONTAINER_START_SPACE:I = 0x66

.field public static final REMOVE_SEAMSCONTAINER_TYPE:I = 0x0

.field public static final SEAMSCONTAINER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SEAMSContainer"

.field public static final USER_VALUE:I = 0x62

.field protected static mContext:Landroid/content/Context;

.field private static mSKLog:Lcom/android/server/SKLogger;


# instance fields
.field protected mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field protected mPms:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/android/server/SKLogger;->getLogger()Lcom/android/server/SKLogger;

    move-result-object v0

    sput-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static declared-synchronized addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I
    .registers 46

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    const-class v8, Lcom/android/server/SEAMSContainer;

    monitor-enter v8

    :try_start_11
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_57

    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v9, "SEAMSContainer"

    const-string v10, "addEntryToMac_begin"

    invoke-virtual {v0, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v9, "SEAMSContainer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "packageName: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", seinfo: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", space: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", appType: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", agent: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_57
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0
    :try_end_5e
    .catchall {:try_start_11 .. :try_end_5e} :catchall_6dc

    move-object v12, v0

    const/4 v0, 0x0

    move-object v13, v0

    :try_start_61
    invoke-virtual {v12}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v16
    :try_end_69
    .catch Lorg/xml/sax/SAXException; {:try_start_61 .. :try_end_69} :catch_6ab
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_61 .. :try_end_69} :catch_686
    .catch Ljavax/xml/transform/TransformerException; {:try_start_61 .. :try_end_69} :catch_661
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_69} :catch_63b
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_69} :catch_615
    .catchall {:try_start_61 .. :try_end_69} :catchall_6dc

    if-eqz v16, :cond_12e

    :try_start_6b
    sget-boolean v16, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v16, :cond_be

    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v14, "SEAMSContainer"
    :try_end_73
    .catch Lorg/xml/sax/SAXException; {:try_start_6b .. :try_end_73} :catch_123
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_6b .. :try_end_73} :catch_118
    .catch Ljavax/xml/transform/TransformerException; {:try_start_6b .. :try_end_73} :catch_10d
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_73} :catch_102
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_73} :catch_f7
    .catchall {:try_start_6b .. :try_end_73} :catchall_6dc

    move/from16 v18, v9

    :try_start_75
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_7a
    .catch Lorg/xml/sax/SAXException; {:try_start_75 .. :try_end_7a} :catch_b5
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_75 .. :try_end_7a} :catch_ac
    .catch Ljavax/xml/transform/TransformerException; {:try_start_75 .. :try_end_7a} :catch_a3
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_7a} :catch_9a
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_7a} :catch_91
    .catchall {:try_start_75 .. :try_end_7a} :catchall_6dc

    move/from16 v19, v10

    :try_start_7c
    const-string/jumbo v10, "macPermFile exists "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v14, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c2

    :catch_91
    move-exception v0

    move/from16 v19, v10

    move-object/from16 v29, v12

    move/from16 v33, v19

    goto/16 :goto_61e

    :catch_9a
    move-exception v0

    move/from16 v19, v10

    move-object/from16 v29, v12

    move/from16 v33, v19

    goto/16 :goto_644

    :catch_a3
    move-exception v0

    move/from16 v19, v10

    move-object/from16 v29, v12

    move/from16 v33, v19

    goto/16 :goto_66a

    :catch_ac
    move-exception v0

    move/from16 v19, v10

    move-object/from16 v29, v12

    move/from16 v33, v19

    goto/16 :goto_68f

    :catch_b5
    move-exception v0

    move/from16 v19, v10

    move-object/from16 v29, v12

    move/from16 v33, v19

    goto/16 :goto_6b4

    :cond_be
    move/from16 v18, v9

    move/from16 v19, v10

    :goto_c2
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_cc

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/io/File;->setWritable(Z)Z

    :cond_cc
    invoke-virtual {v15, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v0
    :try_end_d0
    .catch Lorg/xml/sax/SAXException; {:try_start_7c .. :try_end_d0} :catch_f0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_7c .. :try_end_d0} :catch_e9
    .catch Ljavax/xml/transform/TransformerException; {:try_start_7c .. :try_end_d0} :catch_e2
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_d0} :catch_db
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_d0} :catch_d4
    .catchall {:try_start_7c .. :try_end_d0} :catchall_6dc

    const/4 v10, 0x1

    move-object v13, v0

    goto/16 :goto_175

    :catch_d4
    move-exception v0

    move-object/from16 v29, v12

    move/from16 v33, v19

    goto/16 :goto_61e

    :catch_db
    move-exception v0

    move-object/from16 v29, v12

    move/from16 v33, v19

    goto/16 :goto_644

    :catch_e2
    move-exception v0

    move-object/from16 v29, v12

    move/from16 v33, v19

    goto/16 :goto_66a

    :catch_e9
    move-exception v0

    move-object/from16 v29, v12

    move/from16 v33, v19

    goto/16 :goto_68f

    :catch_f0
    move-exception v0

    move-object/from16 v29, v12

    move/from16 v33, v19

    goto/16 :goto_6b4

    :catch_f7
    move-exception v0

    move/from16 v18, v9

    move/from16 v19, v10

    move-object/from16 v29, v12

    move/from16 v33, v19

    goto/16 :goto_61e

    :catch_102
    move-exception v0

    move/from16 v18, v9

    move/from16 v19, v10

    move-object/from16 v29, v12

    move/from16 v33, v19

    goto/16 :goto_644

    :catch_10d
    move-exception v0

    move/from16 v18, v9

    move/from16 v19, v10

    move-object/from16 v29, v12

    move/from16 v33, v19

    goto/16 :goto_66a

    :catch_118
    move-exception v0

    move/from16 v18, v9

    move/from16 v19, v10

    move-object/from16 v29, v12

    move/from16 v33, v19

    goto/16 :goto_68f

    :catch_123
    move-exception v0

    move/from16 v18, v9

    move/from16 v19, v10

    move-object/from16 v29, v12

    move/from16 v33, v19

    goto/16 :goto_6b4

    :cond_12e
    move/from16 v18, v9

    move/from16 v19, v10

    :try_start_132
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z
    :try_end_134
    .catch Lorg/xml/sax/SAXException; {:try_start_132 .. :try_end_134} :catch_60e
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_132 .. :try_end_134} :catch_607
    .catch Ljavax/xml/transform/TransformerException; {:try_start_132 .. :try_end_134} :catch_601
    .catch Ljava/io/IOException; {:try_start_132 .. :try_end_134} :catch_5fb
    .catch Ljava/lang/Exception; {:try_start_132 .. :try_end_134} :catch_5f5
    .catchall {:try_start_132 .. :try_end_134} :catchall_6dc

    if-eqz v0, :cond_157

    :try_start_136
    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v9, "SEAMSContainer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "addEntryToMac,"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " does not exist, creating file"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_157
    .catch Lorg/xml/sax/SAXException; {:try_start_136 .. :try_end_157} :catch_f0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_136 .. :try_end_157} :catch_e9
    .catch Ljavax/xml/transform/TransformerException; {:try_start_136 .. :try_end_157} :catch_e2
    .catch Ljava/io/IOException; {:try_start_136 .. :try_end_157} :catch_db
    .catch Ljava/lang/Exception; {:try_start_136 .. :try_end_157} :catch_d4
    .catchall {:try_start_136 .. :try_end_157} :catchall_6dc

    :cond_157
    :try_start_157
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->createNewFile()Z

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v0
    :try_end_15e
    .catch Lorg/xml/sax/SAXException; {:try_start_157 .. :try_end_15e} :catch_60e
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_157 .. :try_end_15e} :catch_607
    .catch Ljavax/xml/transform/TransformerException; {:try_start_157 .. :try_end_15e} :catch_601
    .catch Ljava/io/IOException; {:try_start_157 .. :try_end_15e} :catch_5fb
    .catch Ljava/lang/Exception; {:try_start_157 .. :try_end_15e} :catch_5f5
    .catchall {:try_start_157 .. :try_end_15e} :catchall_6dc

    if-nez v0, :cond_164

    const/4 v0, 0x1

    :try_start_161
    invoke-virtual {v1, v0}, Ljava/io/File;->setWritable(Z)Z
    :try_end_164
    .catch Lorg/xml/sax/SAXException; {:try_start_161 .. :try_end_164} :catch_f0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_161 .. :try_end_164} :catch_e9
    .catch Ljavax/xml/transform/TransformerException; {:try_start_161 .. :try_end_164} :catch_e2
    .catch Ljava/io/IOException; {:try_start_161 .. :try_end_164} :catch_db
    .catch Ljava/lang/Exception; {:try_start_161 .. :try_end_164} :catch_d4
    .catchall {:try_start_161 .. :try_end_164} :catchall_6dc

    :cond_164
    :try_start_164
    invoke-virtual {v15}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    move-object v13, v0

    const-string/jumbo v0, "policy"

    invoke-interface {v13, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v13, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_173
    .catch Lorg/xml/sax/SAXException; {:try_start_164 .. :try_end_173} :catch_60e
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_164 .. :try_end_173} :catch_607
    .catch Ljavax/xml/transform/TransformerException; {:try_start_164 .. :try_end_173} :catch_601
    .catch Ljava/io/IOException; {:try_start_164 .. :try_end_173} :catch_5fb
    .catch Ljava/lang/Exception; {:try_start_164 .. :try_end_173} :catch_5f5
    .catchall {:try_start_164 .. :try_end_173} :catchall_6dc

    move/from16 v10, v19

    :goto_175
    :try_start_175
    invoke-interface {v13}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Element;->normalize()V

    const-string/jumbo v0, "policy"

    invoke-interface {v13, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    move-object v9, v0

    const/4 v0, 0x0

    const/4 v14, 0x0

    invoke-interface {v9, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v16

    check-cast v16, Lorg/w3c/dom/Element;

    move-object/from16 v20, v16

    const-string/jumbo v0, "signer"

    move-object/from16 v14, v20

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0
    :try_end_197
    .catch Lorg/xml/sax/SAXException; {:try_start_175 .. :try_end_197} :catch_5ee
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_175 .. :try_end_197} :catch_5e7
    .catch Ljavax/xml/transform/TransformerException; {:try_start_175 .. :try_end_197} :catch_5e0
    .catch Ljava/io/IOException; {:try_start_175 .. :try_end_197} :catch_5d9
    .catch Ljava/lang/Exception; {:try_start_175 .. :try_end_197} :catch_5d3
    .catchall {:try_start_175 .. :try_end_197} :catchall_6dc

    move-object/from16 v21, v0

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/4 v0, 0x0

    move-object/from16 v17, v0

    :try_start_1a4
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/SEAMSContainer;->getContainerType(I)I

    move-result v0
    :try_end_1ac
    .catch Ljava/lang/NumberFormatException; {:try_start_1a4 .. :try_end_1ac} :catch_596
    .catch Lorg/xml/sax/SAXException; {:try_start_1a4 .. :try_end_1ac} :catch_5ee
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1a4 .. :try_end_1ac} :catch_5e7
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1a4 .. :try_end_1ac} :catch_5e0
    .catch Ljava/io/IOException; {:try_start_1a4 .. :try_end_1ac} :catch_5d9
    .catch Ljava/lang/Exception; {:try_start_1a4 .. :try_end_1ac} :catch_5d3
    .catchall {:try_start_1a4 .. :try_end_1ac} :catchall_6dc

    move v11, v0

    nop

    const/4 v0, 0x0

    move-object/from16 v23, v0

    const/4 v0, 0x1

    if-ne v11, v0, :cond_56f

    const/4 v0, 0x4

    if-ne v6, v0, :cond_213

    :try_start_1b7
    const-string/jumbo v24, "service"

    move-object/from16 v25, v24

    move-object/from16 v0, v25

    invoke-interface {v13, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v23

    move-object/from16 v26, v23

    move-object/from16 v27, v0

    const-string/jumbo v0, "name"

    move-object/from16 v28, v9

    move-object/from16 v9, v26

    invoke-interface {v9, v0, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "seinfo"

    invoke-interface {v9, v0, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "space"
    :try_end_1d9
    .catch Lorg/xml/sax/SAXException; {:try_start_1b7 .. :try_end_1d9} :catch_20c
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1b7 .. :try_end_1d9} :catch_205
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1b7 .. :try_end_1d9} :catch_1fe
    .catch Ljava/io/IOException; {:try_start_1b7 .. :try_end_1d9} :catch_1f7
    .catch Ljava/lang/Exception; {:try_start_1b7 .. :try_end_1d9} :catch_1f0
    .catchall {:try_start_1b7 .. :try_end_1d9} :catchall_6dc

    move-object/from16 v29, v12

    :try_start_1db
    const-string v12, "1023"

    invoke-interface {v9, v0, v12}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "allowSpace"

    const-string v12, "0,701-1023"

    invoke-interface {v9, v0, v12}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "containerAllowSpace"

    invoke-interface {v9, v0, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v23, v27

    goto/16 :goto_286

    :catch_1f0
    move-exception v0

    move-object/from16 v29, v12

    move/from16 v33, v10

    goto/16 :goto_5fa

    :catch_1f7
    move-exception v0

    move-object/from16 v29, v12

    move/from16 v33, v10

    goto/16 :goto_600

    :catch_1fe
    move-exception v0

    move-object/from16 v29, v12

    move/from16 v33, v10

    goto/16 :goto_606

    :catch_205
    move-exception v0

    move-object/from16 v29, v12

    move/from16 v33, v10

    goto/16 :goto_60c

    :catch_20c
    move-exception v0

    move-object/from16 v29, v12

    move/from16 v33, v10

    goto/16 :goto_613

    :cond_213
    move-object/from16 v28, v9

    move-object/from16 v29, v12

    const/4 v0, 0x3

    if-ne v6, v0, :cond_284

    const-string/jumbo v0, "service"

    invoke-interface {v13, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v9

    const-string/jumbo v12, "name"

    invoke-interface {v9, v12, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v12, "seinfo"

    invoke-interface {v9, v12, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v12, "space"

    invoke-interface {v9, v12, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "1023"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_245

    const-string v12, "allowSpace"

    move-object/from16 v30, v0

    const-string v0, "0,701-1023"

    invoke-interface {v9, v12, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25d

    :cond_245
    move-object/from16 v30, v0

    const-string v0, "allowSpace"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0,"

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v9, v0, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :goto_25d
    if-eqz v7, :cond_268

    const-string v0, "agent"

    invoke-static/range {p6 .. p6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v9, v0, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_268
    .catch Lorg/xml/sax/SAXException; {:try_start_1db .. :try_end_268} :catch_27f
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1db .. :try_end_268} :catch_27a
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1db .. :try_end_268} :catch_275
    .catch Ljava/io/IOException; {:try_start_1db .. :try_end_268} :catch_270
    .catch Ljava/lang/Exception; {:try_start_1db .. :try_end_268} :catch_26b
    .catchall {:try_start_1db .. :try_end_268} :catchall_6dc

    :cond_268
    move-object/from16 v23, v30

    goto :goto_286

    :catch_26b
    move-exception v0

    move/from16 v33, v10

    goto/16 :goto_61e

    :catch_270
    move-exception v0

    move/from16 v33, v10

    goto/16 :goto_644

    :catch_275
    move-exception v0

    move/from16 v33, v10

    goto/16 :goto_66a

    :catch_27a
    move-exception v0

    move/from16 v33, v10

    goto/16 :goto_68f

    :catch_27f
    move-exception v0

    move/from16 v33, v10

    goto/16 :goto_6b4

    :cond_284
    move-object/from16 v9, v22

    :goto_286
    :try_start_286
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z
    :try_end_288
    .catch Lorg/xml/sax/SAXException; {:try_start_286 .. :try_end_288} :catch_56a
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_286 .. :try_end_288} :catch_565
    .catch Ljavax/xml/transform/TransformerException; {:try_start_286 .. :try_end_288} :catch_560
    .catch Ljava/io/IOException; {:try_start_286 .. :try_end_288} :catch_55b
    .catch Ljava/lang/Exception; {:try_start_286 .. :try_end_288} :catch_556
    .catchall {:try_start_286 .. :try_end_288} :catchall_6dc

    if-eqz v0, :cond_293

    :try_start_28a
    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMSContainer"

    const-string v12, "addentrytomac - done with preparing entry"

    invoke-virtual {v0, v4, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_293
    .catch Lorg/xml/sax/SAXException; {:try_start_28a .. :try_end_293} :catch_27f
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_28a .. :try_end_293} :catch_27a
    .catch Ljavax/xml/transform/TransformerException; {:try_start_28a .. :try_end_293} :catch_275
    .catch Ljava/io/IOException; {:try_start_28a .. :try_end_293} :catch_270
    .catch Ljava/lang/Exception; {:try_start_28a .. :try_end_293} :catch_26b
    .catchall {:try_start_28a .. :try_end_293} :catchall_6dc

    :cond_293
    :try_start_293
    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/SELinuxMMAC;->findMacPermEntry(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    const-string/jumbo v4, "signer"

    invoke-interface {v13, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    const-string/jumbo v12, "seinfo"

    invoke-interface {v13, v12}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v12

    const-string v7, "allow-all"

    invoke-interface {v13, v7}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v7
    :try_end_2ab
    .catch Lorg/xml/sax/SAXException; {:try_start_293 .. :try_end_2ab} :catch_56a
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_293 .. :try_end_2ab} :catch_565
    .catch Ljavax/xml/transform/TransformerException; {:try_start_293 .. :try_end_2ab} :catch_560
    .catch Ljava/io/IOException; {:try_start_293 .. :try_end_2ab} :catch_55b
    .catch Ljava/lang/Exception; {:try_start_293 .. :try_end_2ab} :catch_556
    .catchall {:try_start_293 .. :try_end_2ab} :catchall_6dc

    if-eqz v0, :cond_480

    move-object/from16 v31, v15

    const/4 v15, 0x1

    if-ne v11, v15, :cond_2eb

    :try_start_2b2
    iget-object v15, v0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;
    :try_end_2b4
    .catch Lorg/xml/sax/SAXException; {:try_start_2b2 .. :try_end_2b4} :catch_27f
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2b2 .. :try_end_2b4} :catch_27a
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2b2 .. :try_end_2b4} :catch_275
    .catch Ljava/io/IOException; {:try_start_2b2 .. :try_end_2b4} :catch_270
    .catch Ljava/lang/Exception; {:try_start_2b2 .. :try_end_2b4} :catch_26b
    .catchall {:try_start_2b2 .. :try_end_2b4} :catchall_6dc

    :try_start_2b4
    const-string v1, "default"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2eb

    move-object/from16 v32, v0

    move/from16 v33, v10

    move-object/from16 v35, v13

    move-object/from16 v36, v14

    move-object/from16 v15, v21

    goto/16 :goto_48c

    :catch_2c8
    move-exception v0

    move/from16 v33, v10

    :goto_2cb
    move-object/from16 v1, p0

    goto/16 :goto_61e

    :catch_2cf
    move-exception v0

    move/from16 v33, v10

    :goto_2d2
    move-object/from16 v1, p0

    goto/16 :goto_644

    :catch_2d6
    move-exception v0

    move/from16 v33, v10

    :goto_2d9
    move-object/from16 v1, p0

    goto/16 :goto_66a

    :catch_2dd
    move-exception v0

    move/from16 v33, v10

    :goto_2e0
    move-object/from16 v1, p0

    goto/16 :goto_68f

    :catch_2e4
    move-exception v0

    move/from16 v33, v10

    :goto_2e7
    move-object/from16 v1, p0

    goto/16 :goto_6b4

    :cond_2eb
    const/4 v1, 0x1

    if-ne v11, v1, :cond_30f

    const-string/jumbo v1, "signature"

    invoke-interface {v4, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "value"

    iget-object v15, v0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-interface {v12, v1, v15}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "space"

    iget v15, v0, Landroid/content/pm/ApplicationInfo;->space:I

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v1, v15}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "allowSpace"

    iget-object v15, v0, Landroid/content/pm/ApplicationInfo;->allowSpace:Ljava/lang/String;

    invoke-interface {v12, v1, v15}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30f
    .catch Lorg/xml/sax/SAXException; {:try_start_2b4 .. :try_end_30f} :catch_2e4
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2b4 .. :try_end_30f} :catch_2dd
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2b4 .. :try_end_30f} :catch_2d6
    .catch Ljava/io/IOException; {:try_start_2b4 .. :try_end_30f} :catch_2cf
    .catch Ljava/lang/Exception; {:try_start_2b4 .. :try_end_30f} :catch_2c8
    .catchall {:try_start_2b4 .. :try_end_30f} :catchall_6dc

    :cond_30f
    const/4 v1, 0x0

    :goto_310
    move-object/from16 v32, v0

    move-object/from16 v15, v21

    :try_start_314
    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_449

    invoke-interface {v15, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;
    :try_end_320
    .catch Lorg/xml/sax/SAXException; {:try_start_314 .. :try_end_320} :catch_477
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_314 .. :try_end_320} :catch_46e
    .catch Ljavax/xml/transform/TransformerException; {:try_start_314 .. :try_end_320} :catch_465
    .catch Ljava/io/IOException; {:try_start_314 .. :try_end_320} :catch_45c
    .catch Ljava/lang/Exception; {:try_start_314 .. :try_end_320} :catch_453
    .catchall {:try_start_314 .. :try_end_320} :catchall_6dc

    move/from16 v33, v10

    :try_start_322
    const-string/jumbo v10, "signature"

    invoke-interface {v0, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_40b

    invoke-static {v0, v3}, Lcom/android/server/SEAMSContainer;->checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v10

    const/16 v16, -0x9

    if-eqz v10, :cond_365

    move-object/from16 v34, v0

    const/4 v0, 0x1

    if-ne v11, v0, :cond_360

    const/4 v0, 0x3

    if-ne v6, v0, :cond_360

    const-string v0, "1023"
    :try_end_341
    .catch Lorg/xml/sax/SAXException; {:try_start_322 .. :try_end_341} :catch_442
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_322 .. :try_end_341} :catch_43b
    .catch Ljavax/xml/transform/TransformerException; {:try_start_322 .. :try_end_341} :catch_434
    .catch Ljava/io/IOException; {:try_start_322 .. :try_end_341} :catch_42d
    .catch Ljava/lang/Exception; {:try_start_322 .. :try_end_341} :catch_426
    .catchall {:try_start_322 .. :try_end_341} :catchall_6dc

    move-object/from16 v35, v13

    :try_start_343
    const-string/jumbo v13, "space"

    invoke-interface {v10, v13}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35d

    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v13, "SEAMSContainer"

    move-object/from16 v36, v14

    const-string v14, "addEntryToMac, ERROR_ALREADY_CONTAINER_APP is returned_1"

    invoke-virtual {v0, v13, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35b
    .catch Lorg/xml/sax/SAXException; {:try_start_343 .. :try_end_35b} :catch_4de
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_343 .. :try_end_35b} :catch_4d9
    .catch Ljavax/xml/transform/TransformerException; {:try_start_343 .. :try_end_35b} :catch_4d4
    .catch Ljava/io/IOException; {:try_start_343 .. :try_end_35b} :catch_4cf
    .catch Ljava/lang/Exception; {:try_start_343 .. :try_end_35b} :catch_4ca
    .catchall {:try_start_343 .. :try_end_35b} :catchall_6dc

    monitor-exit v8

    return v16

    :cond_35d
    move-object/from16 v36, v14

    goto :goto_36b

    :cond_360
    move-object/from16 v35, v13

    move-object/from16 v36, v14

    goto :goto_36b

    :cond_365
    move-object/from16 v34, v0

    move-object/from16 v35, v13

    move-object/from16 v36, v14

    :goto_36b
    if-eqz v10, :cond_3e2

    const/4 v13, 0x1

    if-ne v11, v13, :cond_3e2

    const/4 v14, 0x4

    if-ne v6, v14, :cond_3e2

    :try_start_373
    const-string v0, "containerAllowSpace"

    invoke-interface {v10, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_386

    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v13, "SEAMSContainer"

    const-string v14, "addEntryToMac, ERROR_ALREADY_CONTAINER_APP is returned_2"

    invoke-virtual {v0, v13, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_384
    .catch Lorg/xml/sax/SAXException; {:try_start_373 .. :try_end_384} :catch_4de
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_373 .. :try_end_384} :catch_4d9
    .catch Ljavax/xml/transform/TransformerException; {:try_start_373 .. :try_end_384} :catch_4d4
    .catch Ljava/io/IOException; {:try_start_373 .. :try_end_384} :catch_4cf
    .catch Ljava/lang/Exception; {:try_start_373 .. :try_end_384} :catch_4ca
    .catchall {:try_start_373 .. :try_end_384} :catchall_6dc

    monitor-exit v8

    return v16

    :cond_386
    :try_start_386
    const-string v0, "containerAllowSpace"

    invoke-interface {v10, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/android/server/SEAMSContainer;->checkSpace(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3bd

    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v13, "SEAMSContainer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addEntryToMac, Existing "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " entry for "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", return true and continue with next step"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v13, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3bb
    .catch Lorg/xml/sax/SAXException; {:try_start_386 .. :try_end_3bb} :catch_4de
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_386 .. :try_end_3bb} :catch_4d9
    .catch Ljavax/xml/transform/TransformerException; {:try_start_386 .. :try_end_3bb} :catch_4d4
    .catch Ljava/io/IOException; {:try_start_386 .. :try_end_3bb} :catch_4cf
    .catch Ljava/lang/Exception; {:try_start_386 .. :try_end_3bb} :catch_4ca
    .catchall {:try_start_386 .. :try_end_3bb} :catchall_6dc

    monitor-exit v8

    return v16

    :cond_3bd
    :try_start_3bd
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "containerAllowSpace"

    invoke-interface {v10, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "containerAllowSpace"

    invoke-interface {v10, v6, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    nop

    move/from16 v18, v6

    goto/16 :goto_4b9

    :cond_3e2
    invoke-interface {v15, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0, v9}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_405

    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "SEAMSContainer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "addEntryToMac, signature match found. Appending elem of ContainerType:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v6, v13}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_405
    .catch Lorg/xml/sax/SAXException; {:try_start_3bd .. :try_end_405} :catch_4de
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3bd .. :try_end_405} :catch_4d9
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3bd .. :try_end_405} :catch_4d4
    .catch Ljava/io/IOException; {:try_start_3bd .. :try_end_405} :catch_4cf
    .catch Ljava/lang/Exception; {:try_start_3bd .. :try_end_405} :catch_4ca
    .catchall {:try_start_3bd .. :try_end_405} :catchall_6dc

    :cond_405
    const/4 v0, 0x1

    nop

    move/from16 v18, v0

    goto/16 :goto_4b9

    :cond_40b
    move-object/from16 v34, v0

    move-object/from16 v35, v13

    move-object/from16 v36, v14

    const/4 v0, 0x3

    const/4 v13, 0x1

    const/4 v14, 0x4

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v21, v15

    move-object/from16 v0, v32

    move/from16 v10, v33

    move-object/from16 v16, v34

    move-object/from16 v13, v35

    move-object/from16 v14, v36

    move/from16 v6, p5

    goto/16 :goto_310

    :catch_426
    move-exception v0

    move-object/from16 v35, v13

    move-object/from16 v1, p0

    goto/16 :goto_61e

    :catch_42d
    move-exception v0

    move-object/from16 v35, v13

    move-object/from16 v1, p0

    goto/16 :goto_644

    :catch_434
    move-exception v0

    move-object/from16 v35, v13

    move-object/from16 v1, p0

    goto/16 :goto_66a

    :catch_43b
    move-exception v0

    move-object/from16 v35, v13

    move-object/from16 v1, p0

    goto/16 :goto_68f

    :catch_442
    move-exception v0

    move-object/from16 v35, v13

    move-object/from16 v1, p0

    goto/16 :goto_6b4

    :cond_449
    move/from16 v33, v10

    move-object/from16 v35, v13

    move-object/from16 v36, v14

    move-object/from16 v34, v16

    goto/16 :goto_4b9

    :catch_453
    move-exception v0

    move/from16 v33, v10

    move-object/from16 v35, v13

    move-object/from16 v1, p0

    goto/16 :goto_61e

    :catch_45c
    move-exception v0

    move/from16 v33, v10

    move-object/from16 v35, v13

    move-object/from16 v1, p0

    goto/16 :goto_644

    :catch_465
    move-exception v0

    move/from16 v33, v10

    move-object/from16 v35, v13

    move-object/from16 v1, p0

    goto/16 :goto_66a

    :catch_46e
    move-exception v0

    move/from16 v33, v10

    move-object/from16 v35, v13

    move-object/from16 v1, p0

    goto/16 :goto_68f

    :catch_477
    move-exception v0

    move/from16 v33, v10

    move-object/from16 v35, v13

    move-object/from16 v1, p0

    goto/16 :goto_6b4

    :cond_480
    move-object/from16 v32, v0

    move/from16 v33, v10

    move-object/from16 v35, v13

    move-object/from16 v36, v14

    move-object/from16 v31, v15

    move-object/from16 v15, v21

    :goto_48c
    :try_start_48c
    const-string/jumbo v0, "signature"

    invoke-interface {v4, v0, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    const-string/jumbo v1, "untrusted"

    invoke-interface {v12, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "space"

    const-string v1, "1023"

    invoke-interface {v12, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "allowSpace"

    const-string v1, "0,701-1023"

    invoke-interface {v12, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z
    :try_end_4ac
    .catch Lorg/xml/sax/SAXException; {:try_start_48c .. :try_end_4ac} :catch_54f
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_48c .. :try_end_4ac} :catch_548
    .catch Ljavax/xml/transform/TransformerException; {:try_start_48c .. :try_end_4ac} :catch_541
    .catch Ljava/io/IOException; {:try_start_48c .. :try_end_4ac} :catch_53a
    .catch Ljava/lang/Exception; {:try_start_48c .. :try_end_4ac} :catch_533
    .catchall {:try_start_48c .. :try_end_4ac} :catchall_6dc

    if-eqz v0, :cond_4b7

    :try_start_4ae
    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "SEAMSContainer"

    const-string v6, "addEntryToMac seandroidinfo = null"

    invoke-virtual {v0, v1, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4b7
    move-object/from16 v34, v16

    :goto_4b9
    if-nez v18, :cond_4e3

    invoke-interface {v4, v7}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v4, v12}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v4, v9}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-object/from16 v1, v36

    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_4c9
    .catch Lorg/xml/sax/SAXException; {:try_start_4ae .. :try_end_4c9} :catch_4de
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4ae .. :try_end_4c9} :catch_4d9
    .catch Ljavax/xml/transform/TransformerException; {:try_start_4ae .. :try_end_4c9} :catch_4d4
    .catch Ljava/io/IOException; {:try_start_4ae .. :try_end_4c9} :catch_4cf
    .catch Ljava/lang/Exception; {:try_start_4ae .. :try_end_4c9} :catch_4ca
    .catchall {:try_start_4ae .. :try_end_4c9} :catchall_6dc

    goto :goto_4e5

    :catch_4ca
    move-exception v0

    move-object/from16 v13, v35

    goto/16 :goto_2cb

    :catch_4cf
    move-exception v0

    move-object/from16 v13, v35

    goto/16 :goto_2d2

    :catch_4d4
    move-exception v0

    move-object/from16 v13, v35

    goto/16 :goto_2d9

    :catch_4d9
    move-exception v0

    move-object/from16 v13, v35

    goto/16 :goto_2e0

    :catch_4de
    move-exception v0

    move-object/from16 v13, v35

    goto/16 :goto_2e7

    :cond_4e3
    move-object/from16 v1, v36

    :goto_4e5
    move-object/from16 v13, v35

    :try_start_4e7
    invoke-interface {v13}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Element;->normalize()V

    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v6

    const/4 v10, 0x0

    if-eqz v33, :cond_500

    new-instance v14, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v14, v13}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    move-object v10, v14

    goto :goto_506

    :cond_500
    new-instance v14, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v14, v1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    move-object v10, v14

    :goto_506
    new-instance v14, Ljavax/xml/transform/stream/StreamResult;
    :try_end_508
    .catch Lorg/xml/sax/SAXException; {:try_start_4e7 .. :try_end_508} :catch_530
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4e7 .. :try_end_508} :catch_52d
    .catch Ljavax/xml/transform/TransformerException; {:try_start_4e7 .. :try_end_508} :catch_52a
    .catch Ljava/io/IOException; {:try_start_4e7 .. :try_end_508} :catch_527
    .catch Ljava/lang/Exception; {:try_start_4e7 .. :try_end_508} :catch_524
    .catchall {:try_start_4e7 .. :try_end_508} :catchall_6dc

    move-object/from16 v37, v1

    move-object/from16 v1, p0

    :try_start_50c
    invoke-direct {v14, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    invoke-virtual {v6, v10, v14}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v16

    if-eqz v16, :cond_51f

    move-object/from16 v38, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/io/File;->setWritable(Z)Z
    :try_end_51e
    .catch Lorg/xml/sax/SAXException; {:try_start_50c .. :try_end_51e} :catch_5d0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_50c .. :try_end_51e} :catch_5cd
    .catch Ljavax/xml/transform/TransformerException; {:try_start_50c .. :try_end_51e} :catch_5ca
    .catch Ljava/io/IOException; {:try_start_50c .. :try_end_51e} :catch_5c7
    .catch Ljava/lang/Exception; {:try_start_50c .. :try_end_51e} :catch_5c4
    .catchall {:try_start_50c .. :try_end_51e} :catchall_6dc

    goto :goto_521

    :cond_51f
    move-object/from16 v38, v0

    :goto_521
    monitor-exit v8

    const/4 v0, 0x0

    return v0

    :catch_524
    move-exception v0

    goto/16 :goto_2cb

    :catch_527
    move-exception v0

    goto/16 :goto_2d2

    :catch_52a
    move-exception v0

    goto/16 :goto_2d9

    :catch_52d
    move-exception v0

    goto/16 :goto_2e0

    :catch_530
    move-exception v0

    goto/16 :goto_2e7

    :catch_533
    move-exception v0

    move-object/from16 v13, v35

    move-object/from16 v1, p0

    goto/16 :goto_61e

    :catch_53a
    move-exception v0

    move-object/from16 v13, v35

    move-object/from16 v1, p0

    goto/16 :goto_644

    :catch_541
    move-exception v0

    move-object/from16 v13, v35

    move-object/from16 v1, p0

    goto/16 :goto_66a

    :catch_548
    move-exception v0

    move-object/from16 v13, v35

    move-object/from16 v1, p0

    goto/16 :goto_68f

    :catch_54f
    move-exception v0

    move-object/from16 v13, v35

    move-object/from16 v1, p0

    goto/16 :goto_6b4

    :catch_556
    move-exception v0

    move/from16 v33, v10

    goto/16 :goto_61e

    :catch_55b
    move-exception v0

    move/from16 v33, v10

    goto/16 :goto_644

    :catch_560
    move-exception v0

    move/from16 v33, v10

    goto/16 :goto_66a

    :catch_565
    move-exception v0

    move/from16 v33, v10

    goto/16 :goto_68f

    :catch_56a
    move-exception v0

    move/from16 v33, v10

    goto/16 :goto_6b4

    :cond_56f
    move-object/from16 v28, v9

    move/from16 v33, v10

    move-object/from16 v29, v12

    move-object/from16 v37, v14

    move-object/from16 v31, v15

    move-object/from16 v15, v21

    :try_start_57b
    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMSContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addEntryToMac is not supported for containertype:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_593
    .catch Lorg/xml/sax/SAXException; {:try_start_57b .. :try_end_593} :catch_5d0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_57b .. :try_end_593} :catch_5cd
    .catch Ljavax/xml/transform/TransformerException; {:try_start_57b .. :try_end_593} :catch_5ca
    .catch Ljava/io/IOException; {:try_start_57b .. :try_end_593} :catch_5c7
    .catch Ljava/lang/Exception; {:try_start_57b .. :try_end_593} :catch_5c4
    .catchall {:try_start_57b .. :try_end_593} :catchall_6dc

    monitor-exit v8

    const/4 v4, -0x1

    return v4

    :catch_596
    move-exception v0

    move-object/from16 v28, v9

    move/from16 v33, v10

    move-object/from16 v29, v12

    move-object/from16 v37, v14

    move-object/from16 v31, v15

    move-object/from16 v15, v21

    :try_start_5a3
    sget-object v4, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "SEAMSContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "space: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " integer parse failed"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5c1
    .catch Lorg/xml/sax/SAXException; {:try_start_5a3 .. :try_end_5c1} :catch_5d0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5a3 .. :try_end_5c1} :catch_5cd
    .catch Ljavax/xml/transform/TransformerException; {:try_start_5a3 .. :try_end_5c1} :catch_5ca
    .catch Ljava/io/IOException; {:try_start_5a3 .. :try_end_5c1} :catch_5c7
    .catch Ljava/lang/Exception; {:try_start_5a3 .. :try_end_5c1} :catch_5c4
    .catchall {:try_start_5a3 .. :try_end_5c1} :catchall_6dc

    monitor-exit v8

    const/4 v4, -0x1

    return v4

    :catch_5c4
    move-exception v0

    goto/16 :goto_61e

    :catch_5c7
    move-exception v0

    goto/16 :goto_644

    :catch_5ca
    move-exception v0

    goto/16 :goto_66a

    :catch_5cd
    move-exception v0

    goto/16 :goto_68f

    :catch_5d0
    move-exception v0

    goto/16 :goto_6b4

    :catch_5d3
    move-exception v0

    move/from16 v33, v10

    move-object/from16 v29, v12

    goto :goto_61e

    :catch_5d9
    move-exception v0

    move/from16 v33, v10

    move-object/from16 v29, v12

    goto/16 :goto_644

    :catch_5e0
    move-exception v0

    move/from16 v33, v10

    move-object/from16 v29, v12

    goto/16 :goto_66a

    :catch_5e7
    move-exception v0

    move/from16 v33, v10

    move-object/from16 v29, v12

    goto/16 :goto_68f

    :catch_5ee
    move-exception v0

    move/from16 v33, v10

    move-object/from16 v29, v12

    goto/16 :goto_6b4

    :catch_5f5
    move-exception v0

    move-object/from16 v29, v12

    move/from16 v33, v19

    :goto_5fa
    goto :goto_61e

    :catch_5fb
    move-exception v0

    move-object/from16 v29, v12

    move/from16 v33, v19

    :goto_600
    goto :goto_644

    :catch_601
    move-exception v0

    move-object/from16 v29, v12

    move/from16 v33, v19

    :goto_606
    goto :goto_66a

    :catch_607
    move-exception v0

    move-object/from16 v29, v12

    move/from16 v33, v19

    :goto_60c
    goto/16 :goto_68f

    :catch_60e
    move-exception v0

    move-object/from16 v29, v12

    move/from16 v33, v19

    :goto_613
    goto/16 :goto_6b4

    :catch_615
    move-exception v0

    move/from16 v18, v9

    move/from16 v19, v10

    move-object/from16 v29, v12

    move/from16 v33, v19

    :goto_61e
    :try_start_61e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v6}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v9, "SEAMSContainer"

    invoke-virtual {v7, v9, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6d0

    :catch_63b
    move-exception v0

    move/from16 v18, v9

    move/from16 v19, v10

    move-object/from16 v29, v12

    move/from16 v33, v19

    :goto_644
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v6}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v9, "SEAMSContainer"

    invoke-virtual {v7, v9, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6cf

    :catch_661
    move-exception v0

    move/from16 v18, v9

    move/from16 v19, v10

    move-object/from16 v29, v12

    move/from16 v33, v19

    :goto_66a
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v6}, Ljavax/xml/transform/TransformerException;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v9, "SEAMSContainer"

    invoke-virtual {v7, v9, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6cf

    :catch_686
    move-exception v0

    move/from16 v18, v9

    move/from16 v19, v10

    move-object/from16 v29, v12

    move/from16 v33, v19

    :goto_68f
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v6}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v9, "SEAMSContainer"

    invoke-virtual {v7, v9, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6cf

    :catch_6ab
    move-exception v0

    move/from16 v18, v9

    move/from16 v19, v10

    move-object/from16 v29, v12

    move/from16 v33, v19

    :goto_6b4
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v6}, Lorg/xml/sax/SAXException;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v9, "SEAMSContainer"

    invoke-virtual {v7, v9, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6cf
    nop

    :goto_6d0
    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMSContainer"

    const-string v6, "addEntryToMac, POLICY_FAILED is returned"

    invoke-virtual {v0, v4, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6d9
    .catchall {:try_start_61e .. :try_end_6d9} :catchall_6dc

    monitor-exit v8

    const/4 v4, -0x1

    return v4

    :catchall_6dc
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method private static checkContainerIDEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;I)Lorg/w3c/dom/Element;
    .registers 9

    if-nez p0, :cond_d

    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "SEAMSContainer"

    const-string v2, "checkContainerIDEntryExists: curElem is null"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_d
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    const/4 v1, 0x0

    if-nez p3, :cond_7d

    :goto_16
    if-eqz v0, :cond_d5

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "seinfo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_75

    const-string/jumbo v2, "name"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    const-string/jumbo v2, "space"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    const-string v2, "agent"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_56

    const-string v2, "agent"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_66

    :cond_56
    const-string/jumbo v2, "seinfo"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "generic_mdm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    :cond_66
    sget-boolean v2, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v2, :cond_73

    sget-object v2, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMSContainer"

    const-string v4, "checkContainerIDEntryExists, Match found..returning elem"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_73
    move-object v1, v0

    goto :goto_d5

    :cond_75
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/w3c/dom/Element;

    goto :goto_16

    :cond_7d
    :goto_7d
    if-eqz v0, :cond_d5

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "seinfo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_cd

    const-string/jumbo v2, "name"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cd

    const-string/jumbo v2, "space"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cd

    const-string v2, "agent"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_cd

    const-string/jumbo v2, "seinfo"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "generic_mdm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_cd

    sget-boolean v2, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v2, :cond_cb

    sget-object v2, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMSContainer"

    const-string v4, "checkContainerIDEntryExists, Match found..returning elem"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_cb
    move-object v1, v0

    goto :goto_d5

    :cond_cd
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/w3c/dom/Element;

    goto :goto_7d

    :cond_d5
    :goto_d5
    return-object v1
.end method

.method private static checkSpace(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_24

    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "SEAMSContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkSpace: existingContAllowSpace="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", newSpace="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_2d
    if-ge v3, v1, :cond_3c

    aget-object v4, v0, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    const/4 v1, 0x1

    return v1

    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    :cond_3c
    return v2
.end method

.method public static checkSpaceRange(Ljava/lang/String;III)I
    .registers 12

    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_24

    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "SEAMSContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkSpace: existingContAllowSpace="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", startRange="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :try_start_2a
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_2d
    if-ge v3, v1, :cond_c3

    aget-object v4, v0, v3

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_92

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v7, v5, v2

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-lt v7, p1, :cond_50

    aget-object v7, v5, v2

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-le v7, p2, :cond_70

    :cond_50
    aget-object v7, v5, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-lt v7, p1, :cond_60

    aget-object v7, v5, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-le v7, p2, :cond_70

    :cond_60
    aget-object v7, v5, v2

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ge v7, p1, :cond_91

    aget-object v7, v5, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-le v7, p2, :cond_91

    :cond_70
    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "SEAMSContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found other container space:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " in contAllowCat is :"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_91
    goto :goto_bf

    :cond_92
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-lt v5, p1, :cond_bf

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-gt v5, p2, :cond_bf

    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "SEAMSContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found other container space:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " in contAllowCat:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_be
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_be} :catch_ce

    return v6

    :cond_bf
    :goto_bf
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2d

    :cond_c3
    nop

    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMSContainer"

    const-string v4, "checkSpaceRange, FALSE is returned"

    invoke-virtual {v1, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :catch_ce
    move-exception v1

    sget-object v2, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMSContainer"

    const-string v4, "NumberFormatException in checkSpaceRange"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    return v2
.end method

.method private static checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_d

    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "SEAMSContainer"

    const-string v3, "checkTrustedEntryExists: curElem is null"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_d
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    nop

    :goto_14
    if-eqz v1, :cond_5f

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "seinfo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_57

    const-string/jumbo v2, "name"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    const-string v2, "agent"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_57

    const-string/jumbo v2, "seinfo"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "generic_mdm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_57

    sget-boolean v2, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v2, :cond_55

    sget-object v2, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMSContainer"

    const-string v4, "checkTrustedEntryExists, Match found..returning elem"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_55
    move-object v0, v1

    goto :goto_5f

    :cond_57
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lorg/w3c/dom/Element;

    goto :goto_14

    :cond_5f
    :goto_5f
    return-object v0
.end method

.method private static getContainerType(I)I
    .registers 2

    const/16 v0, 0xc7

    if-le p0, v0, :cond_8

    const/16 v0, 0x1f4

    if-le p0, v0, :cond_c

    :cond_8
    const/16 v0, 0x3ff

    if-ne p0, v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method protected static declared-synchronized getSignatureEntryFromMac(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .registers 20

    move-object/from16 v1, p1

    const-class v2, Lcom/android/server/SEAMSContainer;

    monitor-enter v2

    :try_start_5
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_22

    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMSContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getSignatureEntryFromMac packageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_114

    move-object v5, v0

    :try_start_29
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_e1

    sget-boolean v7, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v7, :cond_42

    sget-object v7, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMSContainer"

    const-string/jumbo v9, "macpermfile exists"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_42} :catch_10c
    .catchall {:try_start_29 .. :try_end_42} :catchall_114

    :cond_42
    move-object/from16 v7, p0

    :try_start_44
    invoke-virtual {v0, v7}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v8

    move-object v6, v8

    invoke-interface {v6}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Element;->normalize()V

    const-string/jumbo v8, "policy"

    invoke-interface {v6, v8}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {v8, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/Element;

    move-object v9, v11

    const-string/jumbo v11, "signer"

    invoke-interface {v9, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    sget-boolean v14, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v14, :cond_96

    sget-object v14, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v15, "SEAMSContainer"

    const-string v10, "Looking for matching entry in /data/security/<container>/mac_permissions.xml"

    invoke-virtual {v14, v15, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v10, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v14, "SEAMSContainer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v0

    const-string/jumbo v0, "the signer length is "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v14, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_98

    :cond_96
    move-object/from16 v17, v0

    :goto_98
    const/16 v16, 0x0

    :goto_9a
    move/from16 v0, v16

    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ge v0, v10, :cond_e0

    invoke-interface {v11, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    move-object v12, v10

    invoke-interface {v12}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    :goto_af
    if-eqz v10, :cond_dd

    invoke-interface {v10}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "seinfo"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_d5

    const-string/jumbo v14, "name"

    invoke-interface {v10, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d5

    const-string/jumbo v14, "signature"

    invoke-interface {v12, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_d2} :catch_10a
    .catchall {:try_start_44 .. :try_end_d2} :catchall_114

    move-object v3, v14

    monitor-exit v2

    return-object v3

    :cond_d5
    :try_start_d5
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/Element;

    move-object v10, v14

    goto :goto_af

    :cond_dd
    add-int/lit8 v16, v0, 0x1

    goto :goto_9a

    :cond_e0
    goto :goto_112

    :cond_e1
    move-object/from16 v7, p0

    move-object/from16 v17, v0

    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMSContainer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getSignatureEntryFromMac, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " does not exist, creating file"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_107} :catch_10a
    .catchall {:try_start_d5 .. :try_end_107} :catchall_114

    const/4 v0, 0x0

    monitor-exit v2

    return-object v0

    :catch_10a
    move-exception v0

    goto :goto_10f

    :catch_10c
    move-exception v0

    move-object/from16 v7, p0

    :goto_10f
    :try_start_10f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_112
    .catchall {:try_start_10f .. :try_end_112} :catchall_114

    :goto_112
    monitor-exit v2

    return-object v3

    :catchall_114
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x0

    if-nez p0, :cond_13

    sget-object v2, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMSContainer"

    const-string/jumbo v4, "getSignatureFromPackage: packageName is null"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_13
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    move-object v3, v1

    const/high16 v4, 0x8000000

    :try_start_1a
    invoke-interface {v2, p0, v4, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v4

    move-object v3, v4

    if-eqz v3, :cond_43

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-eqz v4, :cond_43

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {v4}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v4

    if-eqz v4, :cond_43

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :goto_33
    array-length v7, v4

    if-ge v6, v7, :cond_42

    aget-object v7, v4, v6

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_3f} :catch_45

    add-int/lit8 v6, v6, 0x1

    goto :goto_33

    :cond_42
    return-object v5

    :cond_43
    nop

    return-object v1

    :catch_45
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method public static getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    goto :goto_10

    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    move-object p0, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_11

    if-lez v1, :cond_3

    move-object v0, p0

    :goto_10
    return-object v0

    :catch_11
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method protected static declared-synchronized isContainerEmpty(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 27

    move/from16 v1, p3

    const-class v2, Lcom/android/server/SEAMSContainer;

    monitor-enter v2

    :try_start_5
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_12

    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMSContainer"

    const-string v4, "Entered isContainerEmpty in SEAMSContainer"

    invoke-virtual {v0, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    const/4 v3, 0x0

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_295

    move-object v4, v0

    :try_start_18
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_213

    sget-boolean v7, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z
    :try_end_25
    .catch Lorg/xml/sax/SAXException; {:try_start_18 .. :try_end_25} :catch_279
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_18 .. :try_end_25} :catch_26a
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_25} :catch_25b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_25} :catch_24c
    .catchall {:try_start_18 .. :try_end_25} :catchall_295

    if-eqz v7, :cond_66

    :try_start_27
    sget-object v7, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMSContainer"

    const-string/jumbo v9, "macpermfile exists"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_31
    .catch Lorg/xml/sax/SAXException; {:try_start_27 .. :try_end_31} :catch_59
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_27 .. :try_end_31} :catch_4c
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_31} :catch_3f
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_31} :catch_32
    .catchall {:try_start_27 .. :try_end_31} :catchall_295

    goto :goto_66

    :catch_32
    move-exception v0

    move-object/from16 v7, p0

    :goto_35
    move-object/from16 v14, p2

    :goto_37
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    :goto_3b
    move-object/from16 v4, p1

    goto/16 :goto_257

    :catch_3f
    move-exception v0

    move-object/from16 v7, p0

    :goto_42
    move-object/from16 v14, p2

    :goto_44
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    :goto_48
    move-object/from16 v4, p1

    goto/16 :goto_266

    :catch_4c
    move-exception v0

    move-object/from16 v7, p0

    :goto_4f
    move-object/from16 v14, p2

    :goto_51
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    :goto_55
    move-object/from16 v4, p1

    goto/16 :goto_275

    :catch_59
    move-exception v0

    move-object/from16 v7, p0

    :goto_5c
    move-object/from16 v14, p2

    :goto_5e
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    :goto_62
    move-object/from16 v4, p1

    goto/16 :goto_284

    :cond_66
    :goto_66
    move-object/from16 v7, p0

    :try_start_68
    invoke-virtual {v0, v7}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v8

    move-object v6, v8

    invoke-interface {v6}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Element;->normalize()V

    const-string/jumbo v8, "policy"

    invoke-interface {v6, v8}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {v8, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/Element;

    move-object v9, v11

    const-string/jumbo v11, "signer"

    invoke-interface {v9, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    sget-boolean v14, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z
    :try_end_8f
    .catch Lorg/xml/sax/SAXException; {:try_start_68 .. :try_end_8f} :catch_210
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_68 .. :try_end_8f} :catch_20e
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_8f} :catch_20c
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_8f} :catch_20a
    .catchall {:try_start_68 .. :try_end_8f} :catchall_295

    if-eqz v14, :cond_b7

    :try_start_91
    sget-object v14, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v15, "SEAMSContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "the signer length is "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v15, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ae
    .catch Lorg/xml/sax/SAXException; {:try_start_91 .. :try_end_ae} :catch_b5
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_91 .. :try_end_ae} :catch_b3
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_ae} :catch_b1
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_ae} :catch_af
    .catchall {:try_start_91 .. :try_end_ae} :catchall_295

    goto :goto_b7

    :catch_af
    move-exception v0

    goto :goto_35

    :catch_b1
    move-exception v0

    goto :goto_42

    :catch_b3
    move-exception v0

    goto :goto_4f

    :catch_b5
    move-exception v0

    goto :goto_5c

    :cond_b7
    :goto_b7
    :try_start_b7
    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z
    :try_end_b9
    .catch Lorg/xml/sax/SAXException; {:try_start_b7 .. :try_end_b9} :catch_210
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_b7 .. :try_end_b9} :catch_20e
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_b9} :catch_20c
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_b9} :catch_20a
    .catchall {:try_start_b7 .. :try_end_b9} :catchall_295

    if-eqz v5, :cond_c4

    :try_start_bb
    sget-object v5, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "SEAMSContainer"

    const-string v14, "Check if there is a package name match"

    invoke-virtual {v5, v10, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c4
    .catch Lorg/xml/sax/SAXException; {:try_start_bb .. :try_end_c4} :catch_b5
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_bb .. :try_end_c4} :catch_b3
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_c4} :catch_b1
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_c4} :catch_af
    .catchall {:try_start_bb .. :try_end_c4} :catchall_295

    :cond_c4
    :try_start_c4
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    const/4 v10, 0x1

    if-ne v5, v10, :cond_1f2

    const/4 v5, 0x0

    invoke-interface {v11, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/Element;

    move-object v5, v14

    const-string/jumbo v12, "signature"

    invoke-interface {v5, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_da
    .catch Lorg/xml/sax/SAXException; {:try_start_c4 .. :try_end_da} :catch_210
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_c4 .. :try_end_da} :catch_20e
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_da} :catch_20c
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_da} :catch_20a
    .catchall {:try_start_c4 .. :try_end_da} :catchall_295

    move-object/from16 v14, p2

    :try_start_dc
    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1ce

    const-string/jumbo v12, "service"

    invoke-interface {v5, v12}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v15
    :try_end_ed
    .catch Lorg/xml/sax/SAXException; {:try_start_dc .. :try_end_ed} :catch_1ef
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_dc .. :try_end_ed} :catch_1ec
    .catch Ljava/io/IOException; {:try_start_dc .. :try_end_ed} :catch_1e9
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_ed} :catch_1e6
    .catchall {:try_start_dc .. :try_end_ed} :catchall_295

    const/4 v10, 0x2

    if-eq v15, v10, :cond_118

    const/4 v15, 0x1

    if-ne v1, v15, :cond_109

    :try_start_f3
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-eq v10, v15, :cond_fa

    goto :goto_109

    :cond_fa
    move-object/from16 v17, v0

    goto :goto_11a

    :catch_fd
    move-exception v0

    goto/16 :goto_37

    :catch_100
    move-exception v0

    goto/16 :goto_44

    :catch_103
    move-exception v0

    goto/16 :goto_51

    :catch_106
    move-exception v0

    goto/16 :goto_5e

    :cond_109
    :goto_109
    sget-object v10, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v15, "SEAMSContainer"

    move-object/from16 v17, v0

    const-string/jumbo v0, "service entry different than expected"

    invoke-virtual {v10, v15, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_115
    .catch Lorg/xml/sax/SAXException; {:try_start_f3 .. :try_end_115} :catch_106
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_f3 .. :try_end_115} :catch_103
    .catch Ljava/io/IOException; {:try_start_f3 .. :try_end_115} :catch_100
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_115} :catch_fd
    .catchall {:try_start_f3 .. :try_end_115} :catchall_295

    monitor-exit v2

    const/4 v0, 0x0

    return v0

    :cond_118
    move-object/from16 v17, v0

    :goto_11a
    const/4 v0, 0x0

    const/4 v10, 0x0

    const/16 v16, 0x0

    :goto_11e
    move/from16 v15, v16

    move-object/from16 v18, v0

    :try_start_122
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v15, v0, :cond_1b6

    invoke-interface {v12, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    sget-boolean v16, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z
    :try_end_130
    .catch Lorg/xml/sax/SAXException; {:try_start_122 .. :try_end_130} :catch_1ef
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_122 .. :try_end_130} :catch_1ec
    .catch Ljava/io/IOException; {:try_start_122 .. :try_end_130} :catch_1e9
    .catch Ljava/lang/Exception; {:try_start_122 .. :try_end_130} :catch_1e6
    .catchall {:try_start_122 .. :try_end_130} :catchall_295

    if-eqz v16, :cond_177

    move-object/from16 v19, v3

    :try_start_134
    sget-object v3, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;
    :try_end_136
    .catch Lorg/xml/sax/SAXException; {:try_start_134 .. :try_end_136} :catch_170
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_134 .. :try_end_136} :catch_169
    .catch Ljava/io/IOException; {:try_start_134 .. :try_end_136} :catch_162
    .catch Ljava/lang/Exception; {:try_start_134 .. :try_end_136} :catch_15b
    .catchall {:try_start_134 .. :try_end_136} :catchall_295

    move-object/from16 v20, v4

    :try_start_138
    const-string v4, "SEAMSContainer"

    move-object/from16 v21, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v6

    const-string/jumbo v6, "isContainerEmpty, curElem name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "name"

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17f

    :catch_15b
    move-exception v0

    move-object/from16 v20, v4

    move-object/from16 v4, p1

    goto/16 :goto_257

    :catch_162
    move-exception v0

    move-object/from16 v20, v4

    move-object/from16 v4, p1

    goto/16 :goto_266

    :catch_169
    move-exception v0

    move-object/from16 v20, v4

    move-object/from16 v4, p1

    goto/16 :goto_275

    :catch_170
    move-exception v0

    move-object/from16 v20, v4

    move-object/from16 v4, p1

    goto/16 :goto_284

    :cond_177
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    :goto_17f
    const-string/jumbo v3, "name"

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_186
    .catch Lorg/xml/sax/SAXException; {:try_start_138 .. :try_end_186} :catch_1b3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_138 .. :try_end_186} :catch_1b0
    .catch Ljava/io/IOException; {:try_start_138 .. :try_end_186} :catch_1ad
    .catch Ljava/lang/Exception; {:try_start_138 .. :try_end_186} :catch_1aa
    .catchall {:try_start_138 .. :try_end_186} :catchall_295

    move-object/from16 v4, p1

    :try_start_188
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19e

    sget-boolean v3, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v3, :cond_19c

    sget-object v3, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "SEAMSContainer"

    const-string/jumbo v6, "isContainerEmpty, agent packagename with generic_mdm seinfo"

    invoke-virtual {v3, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19c
    .catch Lorg/xml/sax/SAXException; {:try_start_188 .. :try_end_19c} :catch_24a
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_188 .. :try_end_19c} :catch_248
    .catch Ljava/io/IOException; {:try_start_188 .. :try_end_19c} :catch_246
    .catch Ljava/lang/Exception; {:try_start_188 .. :try_end_19c} :catch_244
    .catchall {:try_start_188 .. :try_end_19c} :catchall_295

    :cond_19c
    add-int/lit8 v10, v10, 0x1

    :cond_19e
    add-int/lit8 v16, v15, 0x1

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    move-object/from16 v5, v21

    move-object/from16 v6, v22

    goto/16 :goto_11e

    :catch_1aa
    move-exception v0

    goto/16 :goto_3b

    :catch_1ad
    move-exception v0

    goto/16 :goto_48

    :catch_1b0
    move-exception v0

    goto/16 :goto_55

    :catch_1b3
    move-exception v0

    goto/16 :goto_62

    :cond_1b6
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v4, p1

    const/4 v0, 0x2

    if-eq v10, v0, :cond_1cb

    const/4 v0, 0x1

    if-ne v10, v0, :cond_1c9

    if-ne v1, v0, :cond_1c9

    goto :goto_1cc

    :cond_1c9
    goto/16 :goto_287

    :cond_1cb
    const/4 v0, 0x1

    :goto_1cc
    monitor-exit v2

    return v0

    :cond_1ce
    move-object/from16 v17, v0

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v4, p1

    :try_start_1da
    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMSContainer"

    const-string v5, "Container has signature mis-match with agent"

    invoke-virtual {v0, v3, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e3
    .catch Lorg/xml/sax/SAXException; {:try_start_1da .. :try_end_1e3} :catch_24a
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1da .. :try_end_1e3} :catch_248
    .catch Ljava/io/IOException; {:try_start_1da .. :try_end_1e3} :catch_246
    .catch Ljava/lang/Exception; {:try_start_1da .. :try_end_1e3} :catch_244
    .catchall {:try_start_1da .. :try_end_1e3} :catchall_295

    monitor-exit v2

    const/4 v2, -0x1

    return v2

    :catch_1e6
    move-exception v0

    goto/16 :goto_251

    :catch_1e9
    move-exception v0

    goto/16 :goto_260

    :catch_1ec
    move-exception v0

    goto/16 :goto_26f

    :catch_1ef
    move-exception v0

    goto/16 :goto_27e

    :cond_1f2
    move-object/from16 v14, p2

    move-object/from16 v17, v0

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v22, v6

    move-object/from16 v4, p1

    :try_start_1fe
    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMSContainer"

    const-string v5, "Container non-empty"

    invoke-virtual {v0, v3, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_207
    .catch Lorg/xml/sax/SAXException; {:try_start_1fe .. :try_end_207} :catch_24a
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1fe .. :try_end_207} :catch_248
    .catch Ljava/io/IOException; {:try_start_1fe .. :try_end_207} :catch_246
    .catch Ljava/lang/Exception; {:try_start_1fe .. :try_end_207} :catch_244
    .catchall {:try_start_1fe .. :try_end_207} :catchall_295

    monitor-exit v2

    const/4 v0, 0x0

    return v0

    :catch_20a
    move-exception v0

    goto :goto_24f

    :catch_20c
    move-exception v0

    goto :goto_25e

    :catch_20e
    move-exception v0

    goto :goto_26d

    :catch_210
    move-exception v0

    goto/16 :goto_27c

    :cond_213
    move-object/from16 v7, p0

    move-object/from16 v14, p2

    move-object/from16 v17, v0

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v4, p1

    :try_start_21f
    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMSContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isContainerEmpty, "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " does not exist, return failed "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_241
    .catch Lorg/xml/sax/SAXException; {:try_start_21f .. :try_end_241} :catch_24a
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_21f .. :try_end_241} :catch_248
    .catch Ljava/io/IOException; {:try_start_21f .. :try_end_241} :catch_246
    .catch Ljava/lang/Exception; {:try_start_21f .. :try_end_241} :catch_244
    .catchall {:try_start_21f .. :try_end_241} :catchall_295

    monitor-exit v2

    const/4 v2, -0x1

    return v2

    :catch_244
    move-exception v0

    goto :goto_257

    :catch_246
    move-exception v0

    goto :goto_266

    :catch_248
    move-exception v0

    goto :goto_275

    :catch_24a
    move-exception v0

    goto :goto_284

    :catch_24c
    move-exception v0

    move-object/from16 v7, p0

    :goto_24f
    move-object/from16 v14, p2

    :goto_251
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v4, p1

    :goto_257
    :try_start_257
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_288

    :catch_25b
    move-exception v0

    move-object/from16 v7, p0

    :goto_25e
    move-object/from16 v14, p2

    :goto_260
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v4, p1

    :goto_266
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_287

    :catch_26a
    move-exception v0

    move-object/from16 v7, p0

    :goto_26d
    move-object/from16 v14, p2

    :goto_26f
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v4, p1

    :goto_275
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_287

    :catch_279
    move-exception v0

    move-object/from16 v7, p0

    :goto_27c
    move-object/from16 v14, p2

    :goto_27e
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v4, p1

    :goto_284
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    :goto_287
    nop

    :goto_288
    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMSContainer"

    const-string/jumbo v5, "isContainerEmpty, POLICY_FAILED is returned"

    invoke-virtual {v0, v3, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_292
    .catchall {:try_start_257 .. :try_end_292} :catchall_295

    monitor-exit v2

    const/4 v2, -0x1

    return v2

    :catchall_295
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method protected static declared-synchronized removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 33

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    const-class v6, Lcom/android/server/SEAMSContainer;

    monitor-enter v6

    :try_start_d
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "SEAMSContainer"

    const-string/jumbo v8, "removeEntryFromMac_begin"

    invoke-virtual {v0, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0
    :try_end_21
    .catchall {:try_start_d .. :try_end_21} :catchall_3bf

    move-object v9, v0

    :try_start_22
    invoke-virtual {v9}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0
    :try_end_26
    .catch Lorg/xml/sax/SAXException; {:try_start_22 .. :try_end_26} :catch_3b2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_22 .. :try_end_26} :catch_3a7
    .catch Ljavax/xml/transform/TransformerException; {:try_start_22 .. :try_end_26} :catch_39c
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_26} :catch_391
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_26} :catch_386
    .catchall {:try_start_22 .. :try_end_26} :catchall_3bf

    move-object v10, v0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v13, v12

    :try_start_2a
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/SEAMSContainer;->getContainerType(I)I

    move-result v0
    :try_end_32
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_32} :catch_348
    .catch Lorg/xml/sax/SAXException; {:try_start_2a .. :try_end_32} :catch_3b2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2a .. :try_end_32} :catch_3a7
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2a .. :try_end_32} :catch_39c
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_32} :catch_391
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_32} :catch_386
    .catchall {:try_start_2a .. :try_end_32} :catchall_3bf

    nop

    :try_start_33
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_319

    sget-boolean v13, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z
    :try_end_3b
    .catch Lorg/xml/sax/SAXException; {:try_start_33 .. :try_end_3b} :catch_3b2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_33 .. :try_end_3b} :catch_3a7
    .catch Ljavax/xml/transform/TransformerException; {:try_start_33 .. :try_end_3b} :catch_39c
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_3b} :catch_391
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3b} :catch_386
    .catchall {:try_start_33 .. :try_end_3b} :catchall_3bf

    if-eqz v13, :cond_6b

    :try_start_3d
    sget-object v13, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v14, "SEAMSContainer"

    const-string/jumbo v15, "macpermfile exists"

    invoke-virtual {v13, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_47
    .catch Lorg/xml/sax/SAXException; {:try_start_3d .. :try_end_47} :catch_64
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3d .. :try_end_47} :catch_5d
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3d .. :try_end_47} :catch_56
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_47} :catch_4f
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_47} :catch_48
    .catchall {:try_start_3d .. :try_end_47} :catchall_3bf

    goto :goto_6b

    :catch_48
    move-exception v0

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    goto/16 :goto_38d

    :catch_4f
    move-exception v0

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    goto/16 :goto_398

    :catch_56
    move-exception v0

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    goto/16 :goto_3a3

    :catch_5d
    move-exception v0

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    goto/16 :goto_3ae

    :catch_64
    move-exception v0

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    goto/16 :goto_3b9

    :cond_6b
    :goto_6b
    :try_start_6b
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v13
    :try_end_6f
    .catch Lorg/xml/sax/SAXException; {:try_start_6b .. :try_end_6f} :catch_3b2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_6b .. :try_end_6f} :catch_3a7
    .catch Ljavax/xml/transform/TransformerException; {:try_start_6b .. :try_end_6f} :catch_39c
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6f} :catch_391
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6f} :catch_386
    .catchall {:try_start_6b .. :try_end_6f} :catchall_3bf

    const/4 v14, 0x1

    if-nez v13, :cond_75

    :try_start_72
    invoke-virtual {v1, v14}, Ljava/io/File;->setWritable(Z)Z
    :try_end_75
    .catch Lorg/xml/sax/SAXException; {:try_start_72 .. :try_end_75} :catch_64
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_72 .. :try_end_75} :catch_5d
    .catch Ljavax/xml/transform/TransformerException; {:try_start_72 .. :try_end_75} :catch_56
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_4f
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_75} :catch_48
    .catchall {:try_start_72 .. :try_end_75} :catchall_3bf

    :cond_75
    :try_start_75
    invoke-virtual {v10, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v13

    move-object v11, v13

    invoke-interface {v11}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Element;->normalize()V

    const-string/jumbo v13, "policy"

    invoke-interface {v11, v13}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    const/4 v15, 0x0

    invoke-interface {v13, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v16

    check-cast v16, Lorg/w3c/dom/Element;

    move-object/from16 v15, v16

    const-string/jumbo v12, "signer"

    invoke-interface {v15, v12}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    const/16 v16, 0x0

    const/16 v17, 0x0

    sget-boolean v18, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v18, :cond_11d

    sget-object v14, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;
    :try_end_a2
    .catch Lorg/xml/sax/SAXException; {:try_start_75 .. :try_end_a2} :catch_3b2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_75 .. :try_end_a2} :catch_3a7
    .catch Ljavax/xml/transform/TransformerException; {:try_start_75 .. :try_end_a2} :catch_39c
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_a2} :catch_391
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_a2} :catch_386
    .catchall {:try_start_75 .. :try_end_a2} :catchall_3bf

    move/from16 v19, v7

    :try_start_a4
    const-string v7, "SEAMSContainer"
    :try_end_a6
    .catch Lorg/xml/sax/SAXException; {:try_start_a4 .. :try_end_a6} :catch_114
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_a4 .. :try_end_a6} :catch_10b
    .catch Ljavax/xml/transform/TransformerException; {:try_start_a4 .. :try_end_a6} :catch_102
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a6} :catch_f9
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_a6} :catch_f0
    .catchall {:try_start_a4 .. :try_end_a6} :catchall_3bf

    move-object/from16 v20, v8

    :try_start_a8
    const-string v8, "Looking for matching entry in /data/security/<container>/mac_permissions.xml"

    invoke-virtual {v14, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMSContainer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_b6
    .catch Lorg/xml/sax/SAXException; {:try_start_a8 .. :try_end_b6} :catch_e9
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_a8 .. :try_end_b6} :catch_e2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_a8 .. :try_end_b6} :catch_db
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_b6} :catch_d4
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_b6} :catch_cd
    .catchall {:try_start_a8 .. :try_end_b6} :catchall_3bf

    move-object/from16 v21, v9

    :try_start_b8
    const-string/jumbo v9, "the signer length is "

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_123

    :catch_cd
    move-exception v0

    move-object/from16 v21, v9

    move/from16 v7, v19

    goto/16 :goto_38d

    :catch_d4
    move-exception v0

    move-object/from16 v21, v9

    move/from16 v7, v19

    goto/16 :goto_398

    :catch_db
    move-exception v0

    move-object/from16 v21, v9

    move/from16 v7, v19

    goto/16 :goto_3a3

    :catch_e2
    move-exception v0

    move-object/from16 v21, v9

    move/from16 v7, v19

    goto/16 :goto_3ae

    :catch_e9
    move-exception v0

    move-object/from16 v21, v9

    move/from16 v7, v19

    goto/16 :goto_3b9

    :catch_f0
    move-exception v0

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move/from16 v7, v19

    goto/16 :goto_38d

    :catch_f9
    move-exception v0

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move/from16 v7, v19

    goto/16 :goto_398

    :catch_102
    move-exception v0

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move/from16 v7, v19

    goto/16 :goto_3a3

    :catch_10b
    move-exception v0

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move/from16 v7, v19

    goto/16 :goto_3ae

    :catch_114
    move-exception v0

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move/from16 v7, v19

    goto/16 :goto_3b9

    :cond_11d
    move/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    :goto_123
    const/4 v7, 0x0

    :goto_124
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v7, v8, :cond_285

    invoke-interface {v12, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Element;

    const-string/jumbo v9, "signature"

    invoke-interface {v8, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_274

    sget-boolean v9, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v9, :cond_15f

    sget-object v9, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v14, "SEAMSContainer"

    move-object/from16 v22, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v13

    const-string/jumbo v13, "matched signature found "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v14, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_163

    :cond_15f
    move-object/from16 v22, v10

    move-object/from16 v23, v13

    :goto_163
    const/4 v9, 0x3

    const/4 v10, 0x1

    if-ne v0, v10, :cond_170

    if-eq v5, v9, :cond_16b

    if-nez v5, :cond_170

    :cond_16b
    invoke-static {v8, v3, v4, v5}, Lcom/android/server/SEAMSContainer;->checkContainerIDEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v10

    :goto_16f
    goto :goto_17c

    :cond_170
    if-nez v5, :cond_177

    invoke-static {v8, v3, v4, v5}, Lcom/android/server/SEAMSContainer;->checkContainerIDEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v10

    goto :goto_16f

    :cond_177
    invoke-static {v8, v3}, Lcom/android/server/SEAMSContainer;->checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v10

    goto :goto_16f

    :goto_17c
    if-eqz v10, :cond_1e5

    if-eq v5, v9, :cond_182

    if-nez v5, :cond_1e5

    :cond_182
    const-string/jumbo v9, "space"

    invoke-interface {v10, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1c9

    sget-boolean v9, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v9, :cond_1bd

    sget-object v9, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v13, "SEAMSContainer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeEntryFromMac, "

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " match found for "

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "..deleting elem"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v13, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1bd
    invoke-interface {v12, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2, v10}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const/4 v2, 0x1

    nop

    :goto_1c6
    move v7, v2

    goto/16 :goto_28f

    :cond_1c9
    sget-object v2, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v9, "SEAMSContainer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "removeEntryFromMac, no match found for"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v9, v13}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e2
    .catch Lorg/xml/sax/SAXException; {:try_start_b8 .. :try_end_1e2} :catch_382
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_b8 .. :try_end_1e2} :catch_37e
    .catch Ljavax/xml/transform/TransformerException; {:try_start_b8 .. :try_end_1e2} :catch_37a
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_1e2} :catch_376
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_1e2} :catch_372
    .catchall {:try_start_b8 .. :try_end_1e2} :catchall_3bf

    monitor-exit v6

    const/4 v2, 0x0

    return v2

    :cond_1e5
    if-eqz v10, :cond_259

    const/4 v2, 0x4

    if-ne v5, v2, :cond_259

    const/4 v9, 0x1

    if-ne v0, v9, :cond_256

    if-ne v5, v2, :cond_256

    :try_start_1ef
    const-string v2, "containerAllowSpace"

    invoke-interface {v10, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_232

    sget-boolean v2, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v2, :cond_229

    sget-object v2, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v9, "SEAMSContainer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "removeEntryFromMac, "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " match found for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "..deleting elem"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v9, v13}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_229
    invoke-interface {v12, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2, v10}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const/4 v2, 0x1

    goto :goto_1c6

    :cond_232
    sget-boolean v2, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v2, :cond_240

    sget-object v2, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v13, "SEAMSContainer"

    const-string/jumbo v14, "it is for Generic Trusted with partial space match"

    invoke-virtual {v2, v13, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_240
    const-string v2, "containerAllowSpace"

    invoke-interface {v10, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/android/server/SEAMSContainer;->removeSpace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_255

    const-string v9, "containerAllowSpace"

    invoke-interface {v10, v9, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x1

    nop

    move v7, v9

    goto :goto_28f

    :cond_255
    nop

    :cond_256
    move-object/from16 v17, v10

    goto :goto_279

    :cond_259
    sget-object v2, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v9, "SEAMSContainer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Signature matches but no entry for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v9, v13}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_271
    .catch Lorg/xml/sax/SAXException; {:try_start_1ef .. :try_end_271} :catch_382
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1ef .. :try_end_271} :catch_37e
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1ef .. :try_end_271} :catch_37a
    .catch Ljava/io/IOException; {:try_start_1ef .. :try_end_271} :catch_376
    .catch Ljava/lang/Exception; {:try_start_1ef .. :try_end_271} :catch_372
    .catchall {:try_start_1ef .. :try_end_271} :catchall_3bf

    monitor-exit v6

    const/4 v2, 0x0

    return v2

    :cond_274
    move-object/from16 v22, v10

    move-object/from16 v23, v13

    const/4 v9, 0x1

    :goto_279
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v16, v8

    move-object/from16 v10, v22

    move-object/from16 v13, v23

    move-object/from16 v2, p1

    goto/16 :goto_124

    :cond_285
    move-object/from16 v22, v10

    move-object/from16 v23, v13

    move-object/from16 v8, v16

    move-object/from16 v10, v17

    move/from16 v7, v19

    :goto_28f
    if-eqz v7, :cond_2ee

    :try_start_291
    const-string/jumbo v2, "service"

    invoke-interface {v8, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-nez v9, :cond_2a1

    invoke-interface {v15, v8}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_2a1
    sget-boolean v9, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v9, :cond_2af

    sget-object v9, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v13, "SEAMSContainer"

    const-string/jumbo v14, "removeEntryFromMac, Match found..deleted elem...writing to file"

    invoke-virtual {v9, v13, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2af
    invoke-interface {v11}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Element;->normalize()V

    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v9

    invoke-virtual {v9}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v13

    new-instance v14, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v14, v11}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    move/from16 v24, v0

    new-instance v0, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    invoke-virtual {v13, v14, v0}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    sget-boolean v16, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v16, :cond_2de

    move-object/from16 v25, v0

    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    move-object/from16 v26, v2

    const-string v2, "SEAMSContainer"

    const-string v5, " removeEntryFromMac, entry removed from mac_permissions.xml"

    invoke-virtual {v0, v2, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2de
    goto :goto_30d

    :catch_2df
    move-exception v0

    goto/16 :goto_38d

    :catch_2e2
    move-exception v0

    goto/16 :goto_398

    :catch_2e5
    move-exception v0

    goto/16 :goto_3a3

    :catch_2e8
    move-exception v0

    goto/16 :goto_3ae

    :catch_2eb
    move-exception v0

    goto/16 :goto_3b9

    :cond_2ee
    move/from16 v24, v0

    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "SEAMSContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " removeEntryFromMac, No match for packageName:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ". Please check again"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :goto_30d
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_3bc

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/File;->setWritable(Z)Z
    :try_end_317
    .catch Lorg/xml/sax/SAXException; {:try_start_291 .. :try_end_317} :catch_2eb
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_291 .. :try_end_317} :catch_2e8
    .catch Ljavax/xml/transform/TransformerException; {:try_start_291 .. :try_end_317} :catch_2e5
    .catch Ljava/io/IOException; {:try_start_291 .. :try_end_317} :catch_2e2
    .catch Ljava/lang/Exception; {:try_start_291 .. :try_end_317} :catch_2df
    .catchall {:try_start_291 .. :try_end_317} :catchall_3bf

    goto/16 :goto_3bc

    :cond_319
    move/from16 v24, v0

    move/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    :try_start_323
    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "SEAMSContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeEntryFromMac, "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " does not exist, creating file"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_345
    .catch Lorg/xml/sax/SAXException; {:try_start_323 .. :try_end_345} :catch_382
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_323 .. :try_end_345} :catch_37e
    .catch Ljavax/xml/transform/TransformerException; {:try_start_323 .. :try_end_345} :catch_37a
    .catch Ljava/io/IOException; {:try_start_323 .. :try_end_345} :catch_376
    .catch Ljava/lang/Exception; {:try_start_323 .. :try_end_345} :catch_372
    .catchall {:try_start_323 .. :try_end_345} :catchall_3bf

    monitor-exit v6

    const/4 v2, 0x0

    return v2

    :catch_348
    move-exception v0

    move/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    :try_start_351
    sget-object v2, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "SEAMSContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "space: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " integer parse failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_36f
    .catch Lorg/xml/sax/SAXException; {:try_start_351 .. :try_end_36f} :catch_382
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_351 .. :try_end_36f} :catch_37e
    .catch Ljavax/xml/transform/TransformerException; {:try_start_351 .. :try_end_36f} :catch_37a
    .catch Ljava/io/IOException; {:try_start_351 .. :try_end_36f} :catch_376
    .catch Ljava/lang/Exception; {:try_start_351 .. :try_end_36f} :catch_372
    .catchall {:try_start_351 .. :try_end_36f} :catchall_3bf

    monitor-exit v6

    const/4 v2, 0x0

    return v2

    :catch_372
    move-exception v0

    move/from16 v7, v19

    goto :goto_38d

    :catch_376
    move-exception v0

    move/from16 v7, v19

    goto :goto_398

    :catch_37a
    move-exception v0

    move/from16 v7, v19

    goto :goto_3a3

    :catch_37e
    move-exception v0

    move/from16 v7, v19

    goto :goto_3ae

    :catch_382
    move-exception v0

    move/from16 v7, v19

    goto :goto_3b9

    :catch_386
    move-exception v0

    move/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    :goto_38d
    :try_start_38d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3bd

    :catch_391
    move-exception v0

    move/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    :goto_398
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3bc

    :catch_39c
    move-exception v0

    move/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    :goto_3a3
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto :goto_3bc

    :catch_3a7
    move-exception v0

    move/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    :goto_3ae
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_3bc

    :catch_3b2
    move-exception v0

    move/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    :goto_3b9
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_3bc
    .catchall {:try_start_38d .. :try_end_3bc} :catchall_3bf

    :cond_3bc
    :goto_3bc
    nop

    :goto_3bd
    monitor-exit v6

    return v7

    :catchall_3bf
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method private static removeSpace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v0, 0x0

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v1

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v3, :cond_31

    aget-object v5, v1, v4

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    const/4 v2, 0x1

    goto :goto_2e

    :cond_16
    if-nez v0, :cond_1a

    move-object v0, v5

    goto :goto_2e

    :cond_1a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_31
    if-eqz v2, :cond_51

    sget-boolean v3, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v3, :cond_50

    sget-object v3, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMSContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeSpace, return: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_50
    return-object v0

    :cond_51
    sget-object v3, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMSContainer"

    const-string/jumbo v5, "removeSpace, null is returned"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    return-object v3
.end method


# virtual methods
.method public activateDomain(IZ)I
    .registers 4

    const/4 v0, -0x1

    return v0
.end method

.method public addAgentEntryAfterFotaAndReload()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public addAppToContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    .registers 6

    const/4 v0, -0x1

    return v0
.end method

.method protected declared-synchronized addSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 9

    monitor-enter p0

    monitor-exit p0

    const/4 v0, -0x1

    return v0
.end method

.method public changeAppDomain(Ljava/lang/String;ILjava/lang/String;Z)I
    .registers 6

    const/4 v0, -0x1

    return v0
.end method

.method public createSEContainer(II)I
    .registers 4

    const/4 v0, -0x1

    return v0
.end method

.method public deActivateDomain(I)I
    .registers 3

    const/4 v0, -0x1

    return v0
.end method

.method protected deleteSEContainerClipboardTableEntry(II)I
    .registers 18

    move-object v1, p0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    move-object v2, v0

    const-string v0, "containerID"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "containerID"

    const-string/jumbo v3, "mode"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v4, v0, v6

    const/4 v7, 0x1

    aput-object v5, v0, v7

    move-object v8, v0

    move v9, v6

    const/4 v10, -0x1

    :try_start_2e
    iget-object v0, v1, Lcom/android/server/SEAMSContainer;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "SeamsClipboardTable"

    const-string/jumbo v12, "mode"

    invoke-virtual {v0, v11, v12, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    if-eqz v0, :cond_85

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v11

    if-nez v11, :cond_42

    goto :goto_85

    :cond_42
    sget-object v11, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v12, "SEAMSContainer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Checking if entry already exists:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, v1, Lcom/android/server/SEAMSContainer;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "SeamsClipboardTable"

    invoke-virtual {v11, v12, v3, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v11

    move v9, v11

    sget-object v11, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v12, "SEAMSContainer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "updateSEContainerClipboardTable: ret = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v9, v7, :cond_83

    goto :goto_84

    :cond_83
    move v6, v10

    :goto_84
    return v6

    :cond_85
    :goto_85
    sget-object v6, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "SEAMSContainer"

    const-string v11, "cvOld null or size 0"

    invoke-virtual {v6, v7, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "SEAMSContainer"

    const-string/jumbo v11, "no entry in database to delete"

    invoke-virtual {v6, v7, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_98} :catch_99

    return v10

    :catch_99
    move-exception v0

    sget-object v6, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "SEAMSContainer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateSEContainerClipboardTable Exception "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v7, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v10
.end method

.method public getActivationStatus()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method protected getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .registers 9

    const/4 v0, 0x0

    sget-boolean v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v1, :cond_f

    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "SEAMSContainer"

    const-string/jumbo v3, "entered getMDMID"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    new-instance v3, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v3}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    move-object v0, v3

    sget-object v3, Lcom/android/server/SEAMSContainer;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, v1}, Lcom/android/server/ServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v3, :cond_34

    sget-object v3, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "SEAMSContainer"

    const-string v6, "MDMID package name is null"

    invoke-virtual {v3, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_34
    iget-object v3, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/SEAMSContainer;->getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_4d

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_43

    goto :goto_4d

    :cond_43
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    return-object v0

    :cond_4d
    :goto_4d
    sget-object v5, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "SEAMSContainer"

    const-string v7, "MDMID certs are null"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method public getPackageNamesFromSEContainer(II)[Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getSEAppContextLine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSEContainerIDs()Ljava/util/HashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSEContainerIDsFromPackageName(Ljava/lang/String;I)[I
    .registers 4

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSignatureFromMac(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public isProcessRunning(Ljava/lang/String;)Z
    .registers 9

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    sget-object v2, Lcom/android/server/SEAMSContainer;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v4, 0x0

    move v5, v4

    :goto_17
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_30

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2d

    const/4 v4, 0x1

    return v4

    :cond_2d
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    :cond_30
    return v4
.end method

.method public loadContainerSetting(Ljava/lang/String;ILjava/lang/String;Z)I
    .registers 9

    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_25

    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "SEAMSContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "loadContainerSetting_begin packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "containerID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    const/4 v0, -0x1

    if-eqz p1, :cond_64

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2f

    goto :goto_64

    :cond_2f
    sget-boolean v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v1, :cond_3d

    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "SEAMSContainer"

    const-string/jumbo v3, "loadContainerSetting, before calling updateAppInfo"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3d
    const-string/jumbo v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerService;

    iput-object v1, p0, Lcom/android/server/SEAMSContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/SEAMSContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->getPackageManagerSEAMS()Lcom/android/server/pm/PackageManagerSEAMS;

    move-result-object v1

    invoke-virtual {v1, p1, p3, p4}, Lcom/android/server/pm/PackageManagerSEAMS;->updateAppInfoForPackage(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_63

    sget-boolean v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v1, :cond_62

    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "SEAMSContainer"

    const-string/jumbo v3, "loadContainerSetting, done with updateAppInfoForPackage"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_62
    const/4 v0, 0x0

    :cond_63
    return v0

    :cond_64
    :goto_64
    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "SEAMSContainer"

    const-string/jumbo v3, "loadContainerSetting, packageName is null or empty"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public removeAppFromContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    .registers 6

    const/4 v0, -0x1

    return v0
.end method

.method protected declared-synchronized removeSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 9

    monitor-enter p0

    monitor-exit p0

    const/4 v0, -0x1

    return v0
.end method

.method public removeSEContainer(III)I
    .registers 5

    const/4 v0, -0x1

    return v0
.end method

.method public restartApp(Ljava/lang/String;)I
    .registers 3

    const/4 v0, -0x1

    return v0
.end method

.method public updateAppToContainer(Ljava/lang/String;[Ljava/lang/String;IIIZ)I
    .registers 8

    const/4 v0, -0x1

    return v0
.end method

.method public updateSeappContextsAndReload()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method
