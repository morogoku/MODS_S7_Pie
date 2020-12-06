.class public Lcom/samsung/context/sdk/samsunganalytics/internal/exception/DiagMonLogger;
.super Ljava/lang/Object;
.source "DiagMonLogger.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final FILE_NAME:Ljava/lang/String; = "diagmon.log"


# instance fields
.field private final DIRECTORY:Ljava/lang/String;

.field private application:Landroid/app/Application;

.field private defaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>(Landroid/app/Application;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/exception/DiagMonLogger;->application:Landroid/app/Application;

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/exception/DiagMonLogger;->DIRECTORY:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/exception/DiagMonLogger;->defaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-direct {p0, p3, p4}, Lcom/samsung/context/sdk/samsunganalytics/internal/exception/DiagMonLogger;->setConfiguration(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private issueReport()V
    .locals 3

    const-string v0, "issue report"

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogENG(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/exception/DiagMonLogger;->application:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/sec/android/diagmonagent/log/provider/IssueBuilder;

    invoke-direct {v1}, Lcom/sec/android/diagmonagent/log/provider/IssueBuilder;-><init>()V

    const-string v2, "fatal exception"

    invoke-virtual {v1, v2}, Lcom/sec/android/diagmonagent/log/provider/IssueBuilder;->setResultCode(Ljava/lang/String;)Lcom/sec/android/diagmonagent/log/provider/IssueBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/diagmonagent/log/provider/IssueBuilder;->setUiMode(Z)Lcom/sec/android/diagmonagent/log/provider/IssueBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK$DiagMonHelper;->issueReport(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/provider/IssueBuilder;)V

    return-void
.end method

.method private makeDir(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v0
.end method

.method private makeFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 5

    invoke-direct {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/exception/DiagMonLogger;->makeDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogENG(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v1
.end method

.method private setConfiguration(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/exception/DiagMonLogger;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "diagmon.log"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/exception/DiagMonLogger;->application:Landroid/app/Application;

    invoke-direct {v1, v2}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->setServiceId(Ljava/lang/String;)Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    move-result-object v1

    const-string v2, "D"

    invoke-virtual {v1, v2}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->setAgree(Ljava/lang/String;)Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->setTrackingId(Ljava/lang/String;)Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->setLogList(Ljava/util/List;)Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->setConfiguration(Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;)Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;

    return-void
.end method

.method private write(Ljava/io/File;Ljava/lang/Throwable;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v0, v1

    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_2
    const-string v2, "Failed to write."

    invoke-static {v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogENG(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :cond_0
    :goto_1
    return-void

    :goto_2
    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v2

    :cond_1
    :goto_3
    throw v1
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/exception/DiagMonLogger;->application:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->isDiagnosticAgree(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/exception/DiagMonLogger;->DIRECTORY:Ljava/lang/String;

    const-string v1, "diagmon.log"

    invoke-direct {p0, v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/exception/DiagMonLogger;->makeFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/exception/DiagMonLogger;->write(Ljava/io/File;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/exception/DiagMonLogger;->issueReport()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/exception/DiagMonLogger;->defaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
