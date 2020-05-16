.class public Lcom/android/server/am/MARsComponentTracker;
.super Ljava/lang/Object;
.source "MARsComponentTracker.java"


# static fields
.field static final TAG:Ljava/lang/String; = "MARsComponentTracker"


# instance fields
.field mContext:Landroid/content/Context;

.field mDBManager:Lcom/android/server/am/MARsDBManager;

.field mPolicyManager:Lcom/android/server/am/MARsPolicyManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsPolicyManager;Lcom/android/server/am/MARsDBManager;Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/MARsComponentTracker;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iput-object p3, p0, Lcom/android/server/am/MARsComponentTracker;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/am/MARsComponentTracker;->mDBManager:Lcom/android/server/am/MARsDBManager;

    return-void
.end method

.method private loadPkgnameForCSC(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const-string/jumbo v1, "favorite"

    :goto_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_15

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v0, :cond_19

    :cond_15
    const/4 v2, 0x1

    if-ne v3, v2, :cond_1a

    nop

    :cond_19
    return-void

    :cond_1a
    const/4 v2, 0x2

    if-ne v3, v2, :cond_1e

    goto :goto_7

    :cond_1e
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    const/4 v4, 0x0

    const-string/jumbo v5, "packageName"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_2f
    goto :goto_7
.end method

.method private updateCSCPackagesList()V
    .registers 9

    const-string v0, "/system/csc/default_application_order.xml"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_4
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_3d

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    move-object v2, v5

    if-eqz v2, :cond_35

    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-direct {p0, v2}, Lcom/android/server/am/MARsComponentTracker;->loadPkgnameForCSC(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_3d

    :cond_35
    const-string v5, "MARsComponentTracker"

    const-string/jumbo v6, "updateCSCPackagesList() parser is null!"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_3d} :catch_5b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_3d} :catch_4a
    .catchall {:try_start_4 .. :try_end_3d} :catchall_48

    :cond_3d
    :goto_3d
    if-eqz v1, :cond_6c

    :try_start_3f
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_42} :catch_43

    :goto_42
    goto :goto_6c

    :catch_43
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_42

    :catchall_48
    move-exception v2

    goto :goto_6d

    :catch_4a
    move-exception v2

    :try_start_4b
    const-string v3, "MARsComponentTracker"

    const-string v4, "IOException in updateCSCPackagesList"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_55
    .catchall {:try_start_4b .. :try_end_55} :catchall_48

    if-eqz v1, :cond_6c

    :try_start_57
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5a} :catch_43

    goto :goto_42

    :catch_5b
    move-exception v2

    :try_start_5c
    const-string v3, "MARsComponentTracker"

    const-string v4, "XmlPullParserException in updateCSCPackagesList"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_66
    .catchall {:try_start_5c .. :try_end_66} :catchall_48

    if-eqz v1, :cond_6c

    :try_start_68
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6b} :catch_43

    goto :goto_42

    :cond_6c
    :goto_6c
    return-void

    :goto_6d
    if-eqz v1, :cond_77

    :try_start_6f
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_72} :catch_73

    goto :goto_77

    :catch_73
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_77
    :goto_77
    throw v2
.end method


# virtual methods
.method trackComponent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V
    .registers 23

    move-object v0, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    const-string v1, "activity"

    move-object/from16 v10, p2

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    return-void

    :cond_12
    const/4 v1, 0x1

    if-ne v9, v1, :cond_18

    if-eqz p7, :cond_18

    return-void

    :cond_18
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_99

    iget-object v1, v0, Lcom/android/server/am/MARsComponentTracker;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    move/from16 v11, p6

    invoke-virtual {v1, v8, v11}, Lcom/android/server/am/MARsPolicyManager;->isRunningPackage(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2a

    goto/16 :goto_9b

    :cond_2a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    if-eqz p1, :cond_3d

    if-nez v9, :cond_98

    iget-object v1, v0, Lcom/android/server/am/MARsComponentTracker;->mDBManager:Lcom/android/server/am/MARsDBManager;

    move-object v2, v8

    move-object v3, v7

    move/from16 v4, p1

    move-wide v5, v12

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/MARsDBManager;->updateAppStartUpInfo(Ljava/lang/String;Ljava/lang/String;ZJ)V

    goto :goto_98

    :cond_3d
    if-nez v9, :cond_67

    const-string v1, "MARsComponentTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "markAppStartUpResult: auto run off case : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " start process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_98

    :cond_67
    iget-object v1, v0, Lcom/android/server/am/MARsComponentTracker;->mDBManager:Lcom/android/server/am/MARsDBManager;

    move-object v2, v8

    move-object v3, v7

    move/from16 v4, p1

    move-wide v5, v12

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/MARsDBManager;->updateAppStartUpInfo(Ljava/lang/String;Ljava/lang/String;ZJ)V

    const-string v1, "MARsComponentTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "markAppStartUpResult: auto run on case : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " start process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_98
    :goto_98
    return-void

    :cond_99
    move/from16 v11, p6

    :goto_9b
    return-void
.end method
