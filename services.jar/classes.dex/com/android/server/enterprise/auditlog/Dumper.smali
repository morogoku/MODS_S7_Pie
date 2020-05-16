.class public Lcom/android/server/enterprise/auditlog/Dumper;
.super Ljava/lang/Thread;
.source "Dumper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Dumper"

.field private static final TEMP_FILENAME:Ljava/lang/String; = "/temp/"

.field private static mTemporaryPath:Ljava/lang/String;


# instance fields
.field private mBegin:J

.field private mDeviceInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDumpFilesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/enterprise/auditlog/PartialFileNode;",
            ">;"
        }
    .end annotation
.end field

.field private mDumpResult:Z

.field private mEnd:J

.field private mFilter:Lcom/android/server/enterprise/auditlog/Filter;

.field private mHeader:Ljava/lang/StringBuilder;

.field private mHeaderDate:Ljava/text/SimpleDateFormat;

.field private mIsFullDump:Z

.field private mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

.field private mPackageName:Ljava/lang/String;

.field private mPfd:Landroid/os/ParcelFileDescriptor;

.field private mTemporaryDirectory:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JJLandroid/os/ParcelFileDescriptor;Ljava/util/ArrayList;Lcom/android/server/enterprise/auditlog/IObserver;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Landroid/os/ParcelFileDescriptor;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/enterprise/auditlog/PartialFileNode;",
            ">;",
            "Lcom/android/server/enterprise/auditlog/IObserver;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeader:Ljava/lang/StringBuilder;

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    iput-object p5, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    iput-object p6, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpFilesList:Ljava/util/ArrayList;

    iput-object p7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    iput-wide p1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mBegin:J

    iput-wide p3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mIsFullDump:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/temp/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryPath:Ljava/lang/String;

    return-void
.end method

.method private appendFileNodeToTemporaryFile(Ljava/io/File;)Z
    .registers 10

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    const/4 v1, 0x0

    if-eqz v0, :cond_93

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_93

    :cond_f
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_11
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/temp.gz"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v2, v4

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v4

    const/high16 v4, 0x10000

    new-array v4, v4, [B

    :goto_3e
    invoke-virtual {v0, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    move v7, v6

    if-lez v6, :cond_49

    invoke-virtual {v2, v4, v1, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_48} :catch_59
    .catchall {:try_start_11 .. :try_end_48} :catchall_57

    goto :goto_3e

    :cond_49
    nop

    :try_start_4a
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4e

    goto :goto_4f

    :catch_4e
    move-exception v1

    :goto_4f
    nop

    :try_start_50
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_54

    :goto_53
    goto :goto_56

    :catch_54
    move-exception v1

    goto :goto_53

    :goto_56
    return v5

    :catchall_57
    move-exception v1

    goto :goto_84

    :catch_59
    move-exception v3

    :try_start_5a
    const-string v4, "Dumper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to append file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_74
    .catchall {:try_start_5a .. :try_end_74} :catchall_57

    nop

    if-eqz v0, :cond_7c

    :try_start_77
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_7b

    goto :goto_7c

    :catch_7b
    move-exception v4

    :cond_7c
    :goto_7c
    if-eqz v2, :cond_83

    :try_start_7e
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_82

    goto :goto_83

    :catch_82
    move-exception v4

    :cond_83
    :goto_83
    return v1

    :goto_84
    if-eqz v0, :cond_8b

    :try_start_86
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_8a

    goto :goto_8b

    :catch_8a
    move-exception v3

    :cond_8b
    :goto_8b
    if-eqz v2, :cond_92

    :try_start_8d
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_91

    goto :goto_92

    :catch_91
    move-exception v3

    :cond_92
    :goto_92
    throw v1

    :cond_93
    :goto_93
    const-string v0, "Dumper"

    const-string v2, "Invalid temporary directory, cannot create file"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private concatenateFiles(Ljava/io/File;Ljava/util/ArrayList;)Ljava/io/File;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/enterprise/auditlog/PartialFileNode;",
            ">;)",
            "Ljava/io/File;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1b

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    :cond_1b
    :try_start_1b
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/Dumper;->appendFileNodeToTemporaryFile(Ljava/io/File;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2d

    const-string v2, "Dumper"

    const-string v4, "Failed to append tempHeaderFile"

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/Dumper;->removeTempFile()V

    return-object v3

    :cond_2d
    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getWasWritten()Z

    move-result v4

    if-nez v4, :cond_46

    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_2d

    :cond_46
    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/auditlog/Dumper;->appendFileNodeToTemporaryFile(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_2d

    const-string v4, "Dumper"

    const-string v5, "Failed to append file node"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/Dumper;->removeTempFile()V

    return-object v3

    :cond_65
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    if-eqz v2, :cond_86

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/temp.gz"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_85} :catch_87

    move-object v0, v2

    :cond_86
    goto :goto_a2

    :catch_87
    move-exception v2

    const-string v3, "Dumper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "concatenateFiles.Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a2
    return-object v0
.end method

.method private createHeader()V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeader:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd \'at\' HH:mm:ss z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeaderDate:Ljava/text/SimpleDateFormat;

    const-string v0, "----------------------------------------------\n"

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeader:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDeviceInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    if-eqz v1, :cond_47

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeader:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    :cond_47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dump Log Generated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeaderDate:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeader:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeader:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private createHeaderTempFile(Ljava/io/File;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v2

    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v2

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeader:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_20
    .catchall {:try_start_2 .. :try_end_20} :catchall_30

    nop

    :try_start_21
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->finish()V

    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_27} :catch_28

    goto :goto_29

    :catch_28
    move-exception v2

    :goto_29
    nop

    :try_start_2a
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_2e

    goto :goto_2f

    :catch_2e
    move-exception v2

    :goto_2f
    return-void

    :catchall_30
    move-exception v2

    if-eqz v1, :cond_3b

    :try_start_33
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->finish()V

    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_39} :catch_3a

    goto :goto_3b

    :catch_3a
    move-exception v3

    :cond_3b
    :goto_3b
    if-eqz v0, :cond_42

    :try_start_3d
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_41

    goto :goto_42

    :catch_41
    move-exception v3

    :cond_42
    :goto_42
    throw v2
.end method

.method private fullDump()V
    .registers 16

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpFilesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    sget-object v1, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryPath:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :try_start_11
    new-instance v11, Ljava/io/FileOutputStream;

    iget-object v12, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v5, v11

    new-instance v11, Ljava/util/zip/GZIPOutputStream;

    new-instance v12, Ljava/io/BufferedOutputStream;

    invoke-direct {v12, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v11, v12}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v6, v11

    iget-object v11, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    if-eqz v11, :cond_95

    :cond_2c
    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_ed

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v11}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getWasWritten()Z

    move-result v12

    if-nez v12, :cond_45

    invoke-virtual {v11}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2c

    :cond_45
    invoke-virtual {v11}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_2c

    new-instance v12, Ljava/io/FileInputStream;

    invoke-virtual {v11}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v12

    new-instance v12, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v12, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v4, v12

    new-instance v12, Ljava/io/InputStreamReader;

    const-string v13, "UTF-8"

    invoke-direct {v12, v4, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v7, v12

    new-instance v12, Ljava/io/BufferedReader;

    invoke-direct {v12, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v8, v12

    :cond_6d
    :goto_6d
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    move-object v13, v12

    if-eqz v12, :cond_2c

    iget-object v12, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    invoke-virtual {v12, v13}, Lcom/android/server/enterprise/auditlog/Filter;->filtering(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6d

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "\n"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    goto :goto_6d

    :cond_95
    if-eqz v1, :cond_ed

    new-instance v11, Ljava/io/File;

    sget-object v12, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryPath:Ljava/lang/String;

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v11, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    iget-object v11, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_ad

    iget-object v11, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->mkdir()Z

    :cond_ad
    new-instance v11, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "/header"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v9, v11

    invoke-direct {p0, v9}, Lcom/android/server/enterprise/auditlog/Dumper;->createHeaderTempFile(Ljava/io/File;)V

    iget-object v11, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpFilesList:Ljava/util/ArrayList;

    invoke-direct {p0, v9, v11}, Lcom/android/server/enterprise/auditlog/Dumper;->concatenateFiles(Ljava/io/File;Ljava/util/ArrayList;)Ljava/io/File;

    move-result-object v11

    if-eqz v11, :cond_ed

    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v12

    const/high16 v12, 0x10000

    new-array v12, v12, [B

    :goto_df
    invoke-virtual {v3, v12}, Ljava/io/InputStream;->read([B)I

    move-result v13

    move v14, v13

    if-lez v13, :cond_ea

    invoke-virtual {v5, v12, v10, v14}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_df

    :cond_ea
    invoke-virtual {v11}, Ljava/io/File;->delete()Z
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_ed} :catch_167
    .catchall {:try_start_11 .. :try_end_ed} :catchall_164

    :cond_ed
    if-eqz v9, :cond_f2

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_f2
    nop

    :try_start_f3
    invoke-virtual {v6}, Ljava/util/zip/GZIPOutputStream;->finish()V

    invoke-virtual {v6}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_f9
    .catch Ljava/io/IOException; {:try_start_f3 .. :try_end_f9} :catch_fa

    goto :goto_117

    :catch_fa
    move-exception v10

    const-string v11, "Dumper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "run.IOException "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_118

    :goto_117
    nop

    :goto_118
    if-eqz v8, :cond_127

    :try_start_11a
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_11d
    .catch Ljava/io/IOException; {:try_start_11a .. :try_end_11d} :catch_11e

    goto :goto_127

    :catch_11e
    move-exception v10

    const-string v11, "Dumper"

    const-string/jumbo v12, "failed to close bufferedReader at fullDump"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_127
    :goto_127
    if-eqz v4, :cond_136

    :try_start_129
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_12c
    .catch Ljava/io/IOException; {:try_start_129 .. :try_end_12c} :catch_12d

    goto :goto_136

    :catch_12d
    move-exception v10

    const-string v11, "Dumper"

    const-string/jumbo v12, "failed to close gizp stream at fullDump"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_136
    :goto_136
    if-eqz v2, :cond_145

    :try_start_138
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_13b
    .catch Ljava/io/IOException; {:try_start_138 .. :try_end_13b} :catch_13c

    goto :goto_145

    :catch_13c
    move-exception v10

    const-string v11, "Dumper"

    const-string/jumbo v12, "failed to close fileStream at fullDump"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_145
    :goto_145
    nop

    :try_start_146
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_149
    .catch Ljava/io/IOException; {:try_start_146 .. :try_end_149} :catch_14a

    goto :goto_153

    :catch_14a
    move-exception v10

    const-string v11, "Dumper"

    const-string/jumbo v12, "failed to close outStream at fullDump"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_153
    if-eqz v3, :cond_1fd

    :try_start_155
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_158
    .catch Ljava/io/IOException; {:try_start_155 .. :try_end_158} :catch_15a

    :goto_158
    goto/16 :goto_1fd

    :catch_15a
    move-exception v10

    const-string v11, "Dumper"

    const-string/jumbo v12, "failed to close fileStreamFull at fullDump"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_158

    :catchall_164
    move-exception v10

    goto/16 :goto_1fe

    :catch_167
    move-exception v11

    :try_start_168
    iput-boolean v10, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    const-string v10, "Dumper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "fullDump.Exception: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v10

    iget-object v12, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_18e
    .catchall {:try_start_168 .. :try_end_18e} :catchall_164

    if-eqz v9, :cond_193

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_193
    if-eqz v6, :cond_1b9

    :try_start_195
    invoke-virtual {v6}, Ljava/util/zip/GZIPOutputStream;->finish()V

    invoke-virtual {v6}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_19b
    .catch Ljava/io/IOException; {:try_start_195 .. :try_end_19b} :catch_19c

    goto :goto_1b9

    :catch_19c
    move-exception v10

    const-string v11, "Dumper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "run.IOException "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1ba

    :cond_1b9
    :goto_1b9
    nop

    :goto_1ba
    if-eqz v8, :cond_1c9

    :try_start_1bc
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_1bf
    .catch Ljava/io/IOException; {:try_start_1bc .. :try_end_1bf} :catch_1c0

    goto :goto_1c9

    :catch_1c0
    move-exception v10

    const-string v11, "Dumper"

    const-string/jumbo v12, "failed to close bufferedReader at fullDump"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c9
    :goto_1c9
    if-eqz v4, :cond_1d8

    :try_start_1cb
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1ce
    .catch Ljava/io/IOException; {:try_start_1cb .. :try_end_1ce} :catch_1cf

    goto :goto_1d8

    :catch_1cf
    move-exception v10

    const-string v11, "Dumper"

    const-string/jumbo v12, "failed to close gizp stream at fullDump"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d8
    :goto_1d8
    if-eqz v2, :cond_1e7

    :try_start_1da
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1dd
    .catch Ljava/io/IOException; {:try_start_1da .. :try_end_1dd} :catch_1de

    goto :goto_1e7

    :catch_1de
    move-exception v10

    const-string v11, "Dumper"

    const-string/jumbo v12, "failed to close fileStream at fullDump"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e7
    :goto_1e7
    if-eqz v5, :cond_1f6

    :try_start_1e9
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_1ec
    .catch Ljava/io/IOException; {:try_start_1e9 .. :try_end_1ec} :catch_1ed

    goto :goto_1f6

    :catch_1ed
    move-exception v10

    const-string v11, "Dumper"

    const-string/jumbo v12, "failed to close outStream at fullDump"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f6
    :goto_1f6
    if-eqz v3, :cond_1fd

    :try_start_1f8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1fb
    .catch Ljava/io/IOException; {:try_start_1f8 .. :try_end_1fb} :catch_15a

    goto/16 :goto_158

    :cond_1fd
    :goto_1fd
    return-void

    :goto_1fe
    if-eqz v9, :cond_203

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_203
    if-eqz v6, :cond_229

    :try_start_205
    invoke-virtual {v6}, Ljava/util/zip/GZIPOutputStream;->finish()V

    invoke-virtual {v6}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_20b
    .catch Ljava/io/IOException; {:try_start_205 .. :try_end_20b} :catch_20c

    goto :goto_229

    :catch_20c
    move-exception v11

    const-string v12, "Dumper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "run.IOException "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22a

    :cond_229
    :goto_229
    nop

    :goto_22a
    if-eqz v8, :cond_239

    :try_start_22c
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_22f
    .catch Ljava/io/IOException; {:try_start_22c .. :try_end_22f} :catch_230

    goto :goto_239

    :catch_230
    move-exception v11

    const-string v12, "Dumper"

    const-string/jumbo v13, "failed to close bufferedReader at fullDump"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_239
    :goto_239
    if-eqz v4, :cond_248

    :try_start_23b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_23e
    .catch Ljava/io/IOException; {:try_start_23b .. :try_end_23e} :catch_23f

    goto :goto_248

    :catch_23f
    move-exception v11

    const-string v12, "Dumper"

    const-string/jumbo v13, "failed to close gizp stream at fullDump"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_248
    :goto_248
    if-eqz v2, :cond_257

    :try_start_24a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_24d
    .catch Ljava/io/IOException; {:try_start_24a .. :try_end_24d} :catch_24e

    goto :goto_257

    :catch_24e
    move-exception v11

    const-string v12, "Dumper"

    const-string/jumbo v13, "failed to close fileStream at fullDump"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_257
    :goto_257
    if-eqz v5, :cond_266

    :try_start_259
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_25c
    .catch Ljava/io/IOException; {:try_start_259 .. :try_end_25c} :catch_25d

    goto :goto_266

    :catch_25d
    move-exception v11

    const-string v12, "Dumper"

    const-string/jumbo v13, "failed to close outStream at fullDump"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_266
    :goto_266
    if-eqz v3, :cond_275

    :try_start_268
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_26b
    .catch Ljava/io/IOException; {:try_start_268 .. :try_end_26b} :catch_26c

    goto :goto_275

    :catch_26c
    move-exception v11

    const-string v12, "Dumper"

    const-string/jumbo v13, "failed to close fileStreamFull at fullDump"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_275
    :goto_275
    throw v10
.end method

.method private readFileLineByLine(Ljava/io/File;)Ljava/io/File;
    .registers 15

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_9
    new-instance v9, Ljava/io/File;

    sget-object v10, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryPath:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    iget-object v9, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1f

    iget-object v9, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->mkdir()Z

    :cond_1f
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "Tmp"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v9

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v4, v9

    new-instance v9, Ljava/util/zip/GZIPOutputStream;

    new-instance v10, Ljava/io/BufferedOutputStream;

    invoke-direct {v10, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v9, v10}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v3, v9

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v5, v9

    new-instance v9, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v9, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v6, v9

    new-instance v9, Ljava/io/InputStreamReader;

    const-string v10, "UTF-8"

    invoke-direct {v9, v6, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v7, v9

    new-instance v9, Ljava/io/BufferedReader;

    invoke-direct {v9, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v8, v9

    :cond_6e
    :goto_6e
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    move-object v10, v9

    if-eqz v9, :cond_ef

    const-string v9, " "

    invoke-virtual {v10, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_7b} :catch_dd
    .catchall {:try_start_9 .. :try_end_7b} :catchall_db

    const/4 v11, 0x0

    :try_start_7c
    aget-object v11, v9, v11

    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11
    :try_end_86
    .catch Ljava/lang/NumberFormatException; {:try_start_7c .. :try_end_86} :catch_d9
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_86} :catch_dd
    .catchall {:try_start_7c .. :try_end_86} :catchall_db

    move-wide v0, v11

    nop

    :try_start_88
    iget-wide v11, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J

    cmp-long v11, v0, v11

    if-lez v11, :cond_8f

    goto :goto_ef

    :cond_8f
    iget-wide v11, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mBegin:J

    cmp-long v11, v0, v11

    if-ltz v11, :cond_6e

    iget-wide v11, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J

    cmp-long v11, v0, v11

    if-gtz v11, :cond_6e

    iget-object v11, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    if-eqz v11, :cond_c0

    iget-object v11, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    invoke-virtual {v11, v10}, Lcom/android/server/enterprise/auditlog/Filter;->filtering(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6e

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    goto :goto_6e

    :cond_c0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_d8} :catch_dd
    .catchall {:try_start_88 .. :try_end_d8} :catchall_db

    goto :goto_6e

    :catch_d9
    move-exception v11

    goto :goto_6e

    :catchall_db
    move-exception v9

    goto :goto_103

    :catch_dd
    move-exception v9

    :try_start_de
    const-string v10, "Dumper"

    const-string/jumbo v11, "readFileLineByLine.IOException"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v10, v9, v11}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_ef
    .catchall {:try_start_de .. :try_end_ef} :catchall_db

    :cond_ef
    :goto_ef
    invoke-static {v8}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    invoke-static {v7}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    invoke-static {v6}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    invoke-static {v5}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    nop

    return-object v2

    :goto_103
    invoke-static {v8}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    invoke-static {v7}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    invoke-static {v6}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    invoke-static {v5}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    throw v9
.end method

.method private removeTempFile()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/temp.gz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2a} :catch_2b

    :cond_2a
    goto :goto_2c

    :catch_2b
    move-exception v0

    :goto_2c
    return-void
.end method

.method private static safeClose(Ljava/io/Closeable;)V
    .registers 4

    if-eqz p0, :cond_e

    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    const-string v1, "Dumper"

    const-string v2, "Failed to close resource."

    invoke-static {v1, v2, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_e
    :goto_e
    return-void
.end method

.method private selectDumpInterval()V
    .registers 19

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpFilesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    move-object v10, v6

    move-object v6, v4

    move v4, v3

    move-object v3, v0

    move-object v0, v9

    :goto_19
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_77

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v3, v11

    check-cast v3, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v3}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getTimestamp()J

    move-result-wide v11

    iget-wide v13, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mBegin:J

    cmp-long v11, v11, v13

    if-gez v11, :cond_31

    goto :goto_19

    :cond_31
    const/4 v11, 0x1

    if-eqz v4, :cond_52

    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v12

    if-eqz v12, :cond_52

    invoke-virtual {v3}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v12

    invoke-direct {v1, v12}, Lcom/android/server/enterprise/auditlog/Dumper;->readFileLineByLine(Ljava/io/File;)Ljava/io/File;

    move-result-object v6

    new-instance v12, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    const-string v13, "com.android.server.enterprise.auditlog"

    invoke-direct {v12, v6, v13}, Lcom/android/server/enterprise/auditlog/PartialFileNode;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v10, v12

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->setWasWritten(Z)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    goto :goto_19

    :cond_52
    invoke-virtual {v3}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getTimestamp()J

    move-result-wide v12

    iget-wide v14, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J

    cmp-long v12, v12, v14

    if-gez v12, :cond_60

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_60
    invoke-virtual {v3}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v12

    invoke-direct {v1, v12}, Lcom/android/server/enterprise/auditlog/Dumper;->readFileLineByLine(Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    new-instance v12, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    const-string v13, "com.android.server.enterprise.auditlog"

    invoke-direct {v12, v5, v13}, Lcom/android/server/enterprise/auditlog/PartialFileNode;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v7, v12

    invoke-virtual {v7, v11}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->setWasWritten(Z)V

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    :cond_77
    new-instance v11, Ljava/io/File;

    sget-object v12, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryPath:Ljava/lang/String;

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v11, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    iget-object v11, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_8d

    iget-object v11, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->mkdir()Z

    :cond_8d
    new-instance v11, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "/header"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    nop

    :try_start_ac
    invoke-direct {v1, v11}, Lcom/android/server/enterprise/auditlog/Dumper;->createHeaderTempFile(Ljava/io/File;)V

    invoke-direct {v1, v11, v8}, Lcom/android/server/enterprise/auditlog/Dumper;->concatenateFiles(Ljava/io/File;Ljava/util/ArrayList;)Ljava/io/File;

    move-result-object v0

    move-object v12, v0

    if-eqz v12, :cond_d8

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v13, v0

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v14, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v14

    invoke-direct {v0, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v9, v0

    const/high16 v0, 0x10000

    new-array v0, v0, [B

    :goto_cc
    invoke-virtual {v13, v0}, Ljava/io/InputStream;->read([B)I

    move-result v14

    move v15, v14

    if-lez v14, :cond_d8

    const/4 v14, 0x0

    invoke-virtual {v9, v0, v14, v15}, Ljava/io/OutputStream;->write([BII)V
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_d7} :catch_117
    .catchall {:try_start_ac .. :try_end_d7} :catchall_113

    goto :goto_cc

    :cond_d8
    if-eqz v6, :cond_dd

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_dd
    if-eqz v5, :cond_e2

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_e2
    if-eqz v7, :cond_e7

    invoke-virtual {v7}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    :cond_e7
    if-eqz v10, :cond_ec

    invoke-virtual {v10}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    :cond_ec
    if-eqz v12, :cond_f1

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    :cond_f1
    if-eqz v13, :cond_101

    :try_start_f3
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_f6
    .catch Ljava/io/IOException; {:try_start_f3 .. :try_end_f6} :catch_f7

    goto :goto_101

    :catch_f7
    move-exception v0

    move-object v14, v0

    const-string v14, "Dumper"

    const-string/jumbo v15, "failed to close input stream file at selectDumpInterval"

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_101
    :goto_101
    if-eqz v9, :cond_157

    :try_start_103
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_103 .. :try_end_106} :catch_107

    :goto_106
    goto :goto_157

    :catch_107
    move-exception v0

    move-object v14, v0

    const-string v14, "Dumper"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_106

    :catchall_113
    move-exception v0

    move-object v14, v9

    move-object v9, v0

    goto :goto_158

    :catch_117
    move-exception v0

    :try_start_118
    const-string v14, "Dumper"

    const-string v15, "SelectDumpInterval.Exception"

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v14

    iget-object v15, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v14, v0, v15}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_128
    .catchall {:try_start_118 .. :try_end_128} :catchall_113

    if-eqz v6, :cond_12d

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_12d
    if-eqz v5, :cond_132

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_132
    if-eqz v7, :cond_137

    invoke-virtual {v7}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    :cond_137
    if-eqz v10, :cond_13c

    invoke-virtual {v10}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    :cond_13c
    if-eqz v12, :cond_141

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    :cond_141
    if-eqz v13, :cond_151

    :try_start_143
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_146
    .catch Ljava/io/IOException; {:try_start_143 .. :try_end_146} :catch_147

    goto :goto_151

    :catch_147
    move-exception v0

    move-object v14, v0

    const-string v14, "Dumper"

    const-string/jumbo v15, "failed to close input stream file at selectDumpInterval"

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_151
    :goto_151
    if-eqz v9, :cond_157

    :try_start_153
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_156
    .catch Ljava/lang/Exception; {:try_start_153 .. :try_end_156} :catch_107

    goto :goto_106

    :cond_157
    :goto_157
    return-void

    :goto_158
    if-eqz v6, :cond_15d

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_15d
    if-eqz v5, :cond_162

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_162
    if-eqz v7, :cond_167

    invoke-virtual {v7}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    :cond_167
    if-eqz v10, :cond_16c

    invoke-virtual {v10}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    :cond_16c
    if-eqz v12, :cond_171

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    :cond_171
    if-eqz v13, :cond_183

    :try_start_173
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_176
    .catch Ljava/io/IOException; {:try_start_173 .. :try_end_176} :catch_177

    goto :goto_183

    :catch_177
    move-exception v0

    move-object v15, v0

    const-string v15, "Dumper"

    move-object/from16 v16, v0

    const-string/jumbo v0, "failed to close input stream file at selectDumpInterval"

    invoke-static {v15, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_183
    :goto_183
    if-eqz v14, :cond_196

    :try_start_185
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_188
    .catch Ljava/lang/Exception; {:try_start_185 .. :try_end_188} :catch_189

    goto :goto_196

    :catch_189
    move-exception v0

    move-object v15, v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v17, v0

    const-string v0, "Dumper"

    invoke-static {v0, v15}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_196
    :goto_196
    throw v9
.end method


# virtual methods
.method public isCompressed(Ljava/io/File;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v1

    const/4 v1, 0x2

    new-array v2, v1, [B

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/FileInputStream;->read([BII)I

    array-length v4, v2

    if-ge v4, v1, :cond_12

    goto :goto_27

    :cond_12
    aget-byte v1, v2, v3

    const/16 v4, 0x1f

    const/4 v5, 0x1

    if-ne v1, v4, :cond_21

    aget-byte v1, v2, v5
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_2d

    const/16 v4, -0x75

    if-ne v1, v4, :cond_21

    move v3, v5

    goto :goto_22

    :cond_21
    nop

    :goto_22
    nop

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return v3

    :goto_27
    nop

    nop

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return v3

    :catchall_2d
    move-exception v1

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    :cond_33
    throw v1
.end method

.method public run()V
    .registers 5

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/Dumper;->createHeader()V

    iget-wide v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_16

    iget-wide v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mBegin:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_12

    goto :goto_16

    :cond_12
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/Dumper;->selectDumpInterval()V

    goto :goto_20

    :cond_16
    :goto_16
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/Dumper;->fullDump()V

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    if-nez v0, :cond_20

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mIsFullDump:Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_3f
    .catchall {:try_start_0 .. :try_end_20} :catchall_3d

    :cond_20
    :goto_20
    :try_start_20
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_29} :catch_2a

    :cond_29
    :goto_29
    goto :goto_33

    :catch_2a
    move-exception v0

    :goto_2b
    const-string v1, "Dumper"

    const-string/jumbo v2, "run.IOException"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_33
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

    iget-boolean v1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    iget-boolean v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mIsFullDump:Z

    invoke-interface {v0, v1, v2}, Lcom/android/server/enterprise/auditlog/IObserver;->notifyDumpFinished(ZZ)V

    goto :goto_73

    :catchall_3d
    move-exception v0

    goto :goto_74

    :catch_3f
    move-exception v0

    :try_start_40
    const-string v1, "Dumper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "run.Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_67
    .catchall {:try_start_40 .. :try_end_67} :catchall_3d

    :try_start_67
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_70} :catch_71

    goto :goto_29

    :catch_71
    move-exception v0

    goto :goto_2b

    :goto_73
    return-void

    :goto_74
    nop

    :try_start_75
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_7e

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_7e} :catch_7f

    :cond_7e
    goto :goto_88

    :catch_7f
    move-exception v1

    const-string v2, "Dumper"

    const-string/jumbo v3, "run.IOException"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_88
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

    iget-boolean v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    iget-boolean v3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mIsFullDump:Z

    invoke-interface {v1, v2, v3}, Lcom/android/server/enterprise/auditlog/IObserver;->notifyDumpFinished(ZZ)V

    throw v0
.end method

.method public setDeviceInfo(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDeviceInfo:Ljava/util/List;

    return-void
.end method

.method public setFilter(Lcom/android/server/enterprise/auditlog/Filter;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    return-void
.end method
