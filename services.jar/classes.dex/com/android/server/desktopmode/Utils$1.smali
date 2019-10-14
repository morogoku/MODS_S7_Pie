.class Lcom/android/server/desktopmode/Utils$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/desktopmode/Utils;->writeFile(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/desktopmode/Utils$1;->val$path:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/desktopmode/Utils$1;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/desktopmode/Utils$1;->val$path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_62

    :try_start_d
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_17} :catch_38

    const/4 v2, 0x0

    :try_start_18
    iget v3, p0, Lcom/android/server/desktopmode/Utils$1;->val$value:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_21} :catch_27
    .catchall {:try_start_18 .. :try_end_21} :catchall_25

    :try_start_21
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_38

    goto :goto_62

    :catchall_25
    move-exception v3

    goto :goto_29

    :catch_27
    move-exception v2

    :try_start_28
    throw v2
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_25

    :goto_29
    if-eqz v2, :cond_34

    :try_start_2b
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2e} :catch_2f
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_38

    goto :goto_37

    :catch_2f
    move-exception v4

    :try_start_30
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_37

    :cond_34
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    :goto_37
    throw v3
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_38} :catch_38

    :catch_38
    move-exception v1

    # getter for: Lcom/android/server/desktopmode/Utils;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/Utils;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to writeFile("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/desktopmode/Utils$1;->val$path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/desktopmode/Utils$1;->val$value:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_62
    :goto_62
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_90

    # getter for: Lcom/android/server/desktopmode/Utils;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/Utils;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writeFile("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/desktopmode/Utils$1;->val$path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/desktopmode/Utils$1;->val$value:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "), returning"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_90
    return-void
.end method
