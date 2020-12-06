.class public Lcom/android/server/enterprise/general/FontWriter;
.super Ljava/lang/Object;
.source "FontWriter.java"


# static fields
.field public static final CHMOD_COMMAND:Ljava/lang/String; = "chmod 777 "

.field public static final CHMOD_EXECUTE_COMMAND:Ljava/lang/String; = "chmod 711 "

.field public static final CHMOD_READ_COMMAND:Ljava/lang/String; = "chmod 744 "

.field public static final FONT_DIRECTORY:Ljava/lang/String; = "fonts"

.field public static final LOC_DIRECTORY:Ljava/lang/String; = "/data/data/com.android.settings/app_fonts"

.field public static final MONOSPACE_LOC_NAME:Ljava/lang/String; = "monospace.loc"

.field public static final NEW_FONT_DIRECTORY:Ljava/lang/String; = "/data/app_fonts/"

.field public static final SANS_LOC_NAME:Ljava/lang/String; = "sans.loc"

.field public static final SERIF_LOC_NAME:Ljava/lang/String; = "serif.loc"

.field private static TAG:Ljava/lang/String;


# instance fields
.field bos:Ljava/io/BufferedOutputStream;

.field fOut:Ljava/io/FileOutputStream;

.field osw:Ljava/io/OutputStreamWriter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "FontWriter"

    sput-object v0, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    iput-object v0, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    iput-object v0, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    return-void
.end method

.method private deleteFolder(Ljava/io/File;Ljava/lang/String;)Z
    .registers 8

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    nop

    :goto_d
    array-length v3, v1

    if-ge v2, v3, :cond_1d

    new-instance v3, Ljava/io/File;

    aget-object v4, v1, v2

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1d
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    goto :goto_23

    :cond_22
    nop

    :goto_23
    return v2
.end method


# virtual methods
.method public changeFilePermission(Ljava/lang/String;)V
    .registers 6

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chmod 744 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    invoke-virtual {v1}, Ljava/lang/Process;->exitValue()I

    move-result v2

    if-nez v2, :cond_23

    goto :goto_2e

    :cond_23
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Cannot chmod"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2b} :catch_2d
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_2b} :catch_2b

    :catch_2b
    move-exception v0

    goto :goto_2f

    :catch_2d
    move-exception v0

    :goto_2e
    nop

    :goto_2f
    return-void
.end method

.method public copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 15

    move-object v0, p2

    move-object v1, p1

    move-object v2, p3

    const-string v3, ""

    const-wide/16 v4, 0x0

    :try_start_7
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v7, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    new-instance v7, Ljava/io/BufferedOutputStream;

    iget-object v8, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-direct {v7, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v7, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    const/16 v7, 0x400

    new-array v7, v7, [B

    const/4 v8, 0x0

    move v9, v8

    :goto_2a
    invoke-virtual {v0, v7}, Ljava/io/InputStream;->read([B)I

    move-result v10

    move v9, v10

    if-lez v10, :cond_37

    iget-object v10, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v10, v7, v8, v9}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_2a

    :cond_37
    iget-object v8, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->flush()V

    iget-object v8, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    iget-object v8, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_46} :catch_7d
    .catchall {:try_start_7 .. :try_end_46} :catchall_7b

    if-eqz v0, :cond_55

    :try_start_48
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c

    goto :goto_55

    :catch_4c
    move-exception v6

    sget-object v7, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v8, "copyFontFile : myInputStream.close() error"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_56

    :cond_55
    :goto_55
    nop

    :goto_56
    :try_start_56
    iget-object v6, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v6, :cond_5f

    iget-object v6, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_5f} :catch_60

    :cond_5f
    goto :goto_68

    :catch_60
    move-exception v6

    sget-object v7, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v8, "copyFontFile : fOut.close() error"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_68
    :try_start_68
    iget-object v6, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    if-eqz v6, :cond_71

    iget-object v6, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_71} :catch_72

    :cond_71
    :goto_71
    goto :goto_bd

    :catch_72
    move-exception v6

    sget-object v7, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v8, "copyFontFile : bos.close() error"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_bd

    :catchall_7b
    move-exception v4

    goto :goto_d1

    :catch_7d
    move-exception v6

    :try_start_7e
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v10, v8, v4

    if-nez v10, :cond_8e

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_8e
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_91
    .catchall {:try_start_7e .. :try_end_91} :catchall_7b

    if-eqz v0, :cond_a0

    :try_start_93
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_96} :catch_97

    goto :goto_a0

    :catch_97
    move-exception v6

    sget-object v7, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v8, "copyFontFile : myInputStream.close() error"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a1

    :cond_a0
    :goto_a0
    nop

    :goto_a1
    :try_start_a1
    iget-object v6, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v6, :cond_aa

    iget-object v6, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_aa} :catch_ab

    :cond_aa
    goto :goto_b3

    :catch_ab
    move-exception v6

    sget-object v7, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v8, "copyFontFile : fOut.close() error"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b3
    :try_start_b3
    iget-object v6, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    if-eqz v6, :cond_71

    iget-object v6, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_bc} :catch_72

    goto :goto_71

    :goto_bd
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/general/FontWriter;->changeFilePermission(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    cmp-long v4, v7, v4

    if-nez v4, :cond_d0

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_d0
    return-void

    :goto_d1
    nop

    if-eqz v0, :cond_e1

    :try_start_d4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_d7
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_d7} :catch_d8

    goto :goto_e1

    :catch_d8
    move-exception v5

    sget-object v6, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v7, "copyFontFile : myInputStream.close() error"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e2

    :cond_e1
    :goto_e1
    nop

    :goto_e2
    :try_start_e2
    iget-object v5, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v5, :cond_eb

    iget-object v5, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_eb
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_eb} :catch_ec

    :cond_eb
    goto :goto_f4

    :catch_ec
    move-exception v5

    sget-object v6, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v7, "copyFontFile : fOut.close() error"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_f4
    :try_start_f4
    iget-object v5, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    if-eqz v5, :cond_fd

    iget-object v5, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_fd
    .catch Ljava/io/IOException; {:try_start_f4 .. :try_end_fd} :catch_fe

    :cond_fd
    goto :goto_106

    :catch_fe
    move-exception v5

    sget-object v6, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v7, "copyFontFile : bos.close() error"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_106
    throw v4
.end method

.method public copyFontFile1(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 15

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/general/FontWriter;->changeFilePermission(Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    :try_start_17
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v7

    new-instance v7, Ljava/io/BufferedOutputStream;

    invoke-direct {v7, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v7

    const/16 v7, 0x400

    new-array v7, v7, [B

    const/4 v8, 0x0

    move v9, v8

    :goto_2e
    invoke-virtual {v2, v7}, Ljava/io/InputStream;->read([B)I

    move-result v10

    move v9, v10

    if-lez v10, :cond_39

    invoke-virtual {v1, v7, v8, v9}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_2e

    :cond_39
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_42} :catch_72
    .catchall {:try_start_17 .. :try_end_42} :catchall_70

    if-eqz v2, :cond_51

    :try_start_44
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48

    goto :goto_51

    :catch_48
    move-exception v6

    sget-object v7, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v8, "copyFontFile : myInputStream.close() error"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_52

    :cond_51
    :goto_51
    nop

    :goto_52
    nop

    :try_start_53
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_57

    goto :goto_60

    :catch_57
    move-exception v6

    sget-object v7, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v8, "copyFontFile : fOut.close() error"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_61

    :goto_60
    nop

    :goto_61
    nop

    :try_start_62
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_66

    goto :goto_6f

    :catch_66
    move-exception v6

    sget-object v7, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v8, "copyFontFile : bos.close() error"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ac

    :cond_6f
    :goto_6f
    goto :goto_ac

    :catchall_70
    move-exception v4

    goto :goto_bd

    :catch_72
    move-exception v6

    :try_start_73
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v10, v8, v4

    if-nez v10, :cond_83

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_83
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_86
    .catchall {:try_start_73 .. :try_end_86} :catchall_70

    if-eqz v2, :cond_95

    :try_start_88
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_8c

    goto :goto_95

    :catch_8c
    move-exception v6

    sget-object v7, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v8, "copyFontFile : myInputStream.close() error"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_96

    :cond_95
    :goto_95
    nop

    :goto_96
    if-eqz v0, :cond_a5

    :try_start_98
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9b} :catch_9c

    goto :goto_a5

    :catch_9c
    move-exception v6

    sget-object v7, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v8, "copyFontFile : fOut.close() error"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a6

    :cond_a5
    :goto_a5
    nop

    :goto_a6
    if-eqz v1, :cond_6f

    :try_start_a8
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ab} :catch_66

    goto :goto_6f

    :goto_ac
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    cmp-long v4, v7, v4

    if-nez v4, :cond_bc

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_bc
    return-void

    :goto_bd
    nop

    if-eqz v2, :cond_cd

    :try_start_c0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c3} :catch_c4

    goto :goto_cd

    :catch_c4
    move-exception v5

    sget-object v6, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v7, "copyFontFile : myInputStream.close() error"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ce

    :cond_cd
    :goto_cd
    nop

    :goto_ce
    if-eqz v0, :cond_dd

    :try_start_d0
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d3} :catch_d4

    goto :goto_dd

    :catch_d4
    move-exception v5

    sget-object v6, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v7, "copyFontFile : fOut.close() error"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_de

    :cond_dd
    :goto_dd
    nop

    :goto_de
    if-eqz v1, :cond_ed

    :try_start_e0
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_e3
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_e3} :catch_e4

    goto :goto_ed

    :catch_e4
    move-exception v5

    sget-object v6, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v7, "copyFontFile : bos.close() error"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    nop

    :cond_ed
    :goto_ed
    throw v4
.end method

.method public createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 12

    sget-object v0, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v1, "createFontDirectory : Start"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/app_fonts/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v1, v3, v2}, Ljava/io/File;->setWritable(ZZ)Z

    invoke-virtual {v1, v3, v2}, Ljava/io/File;->setExecutable(ZZ)Z

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_40

    const/4 v2, 0x0

    return-object v2

    :cond_40
    nop

    :goto_41
    array-length v5, v4

    if-ge v2, v5, :cond_4c

    aget-object v5, v4, v2

    invoke-direct {p0, v1, v5}, Lcom/android/server/enterprise/general/FontWriter;->deleteFolder(Ljava/io/File;Ljava/lang/String;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    :cond_4c
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-eqz v2, :cond_5a

    sget-object v2, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v5, "Font directory  : Created"

    invoke-static {v2, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_61

    :cond_5a
    sget-object v2, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v5, "Font directory  : Not Created"

    invoke-static {v2, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_61
    :try_start_61
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chmod 711 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I

    invoke-virtual {v6}, Ljava/lang/Process;->exitValue()I

    move-result v7

    if-nez v7, :cond_88

    goto :goto_a1

    :cond_88
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Cannot chmod"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_90} :catch_99
    .catch Ljava/lang/InterruptedException; {:try_start_61 .. :try_end_90} :catch_90

    :catch_90
    move-exception v2

    sget-object v5, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v6, "InterruptedException : "

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a2

    :catch_99
    move-exception v2

    sget-object v5, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v6, "IOException : "

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a1
    nop

    :goto_a2
    return-object v3
.end method

.method public writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    const-string v0, ""

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/app_fonts/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/OutputStreamWriter;

    iget-object v5, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    iget-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->flush()V

    iget-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_61} :catch_8a
    .catchall {:try_start_2 .. :try_end_61} :catchall_88

    :try_start_61
    iget-object v1, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v1, :cond_6a

    iget-object v1, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_6a} :catch_6b

    :cond_6a
    goto :goto_74

    :catch_6b
    move-exception v1

    sget-object v2, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "writeLoc : osw.close() error"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_74
    :try_start_74
    iget-object v1, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_7d

    iget-object v1, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_7d} :catch_7e

    :cond_7d
    :goto_7d
    goto :goto_ab

    :catch_7e
    move-exception v1

    sget-object v2, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "writeLoc : fOut.close() error"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ab

    :catchall_88
    move-exception v1

    goto :goto_b7

    :catch_8a
    move-exception v1

    :try_start_8b
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8e
    .catchall {:try_start_8b .. :try_end_8e} :catchall_88

    :try_start_8e
    iget-object v1, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v1, :cond_97

    iget-object v1, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_97} :catch_98

    :cond_97
    goto :goto_a1

    :catch_98
    move-exception v1

    sget-object v2, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "writeLoc : osw.close() error"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a1
    :try_start_a1
    iget-object v1, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_7d

    iget-object v1, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_aa} :catch_7e

    goto :goto_7d

    :goto_ab
    const-string/jumbo v1, "persist.sys.flipfontpath"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/general/FontWriter;->changeFilePermission(Ljava/lang/String;)V

    return-void

    :goto_b7
    nop

    :try_start_b8
    iget-object v2, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v2, :cond_c1

    iget-object v2, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_c1} :catch_c2

    :cond_c1
    goto :goto_cb

    :catch_c2
    move-exception v2

    sget-object v3, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "writeLoc : osw.close() error"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_cb
    :try_start_cb
    iget-object v2, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_d4

    iget-object v2, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_d4
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_d4} :catch_d5

    :cond_d4
    goto :goto_de

    :catch_d5
    move-exception v2

    sget-object v3, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "writeLoc : fOut.close() error"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_de
    throw v1
.end method
