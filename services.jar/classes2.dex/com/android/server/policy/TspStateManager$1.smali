.class Lcom/android/server/policy/TspStateManager$1;
.super Ljava/lang/Object;
.source "TspStateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/TspStateManager;->updateTspState(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/TspStateManager;

.field final synthetic val$cmd:Ljava/lang/String;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/server/policy/TspStateManager;Ljava/lang/String;I)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/policy/TspStateManager$1;->this$0:Lcom/android/server/policy/TspStateManager;

    iput-object p2, p0, Lcom/android/server/policy/TspStateManager$1;->val$cmd:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/policy/TspStateManager$1;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "set_grip_data,"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/TspStateManager$1;->val$cmd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TspStateManagerInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update cmd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/policy/TspStateManager$1;->this$0:Lcom/android/server/policy/TspStateManager;

    # getter for: Lcom/android/server/policy/TspStateManager;->mTspDebug:Lcom/android/server/policy/TspStateManager$TspDebug;
    invoke-static {v2}, Lcom/android/server/policy/TspStateManager;->access$400(Lcom/android/server/policy/TspStateManager;)Lcom/android/server/policy/TspStateManager$TspDebug;

    move-result-object v2

    if-eqz v2, :cond_43

    iget-object v2, p0, Lcom/android/server/policy/TspStateManager$1;->this$0:Lcom/android/server/policy/TspStateManager;

    # getter for: Lcom/android/server/policy/TspStateManager;->mTspDebug:Lcom/android/server/policy/TspStateManager$TspDebug;
    invoke-static {v2}, Lcom/android/server/policy/TspStateManager;->access$400(Lcom/android/server/policy/TspStateManager;)Lcom/android/server/policy/TspStateManager$TspDebug;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/TspStateManager$1;->this$0:Lcom/android/server/policy/TspStateManager;

    # getter for: Lcom/android/server/policy/TspStateManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/policy/TspStateManager;->access$500(Lcom/android/server/policy/TspStateManager;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/policy/TspStateManager$1;->val$cmd:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/policy/TspStateManager$1;->val$type:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/policy/TspStateManager$TspDebug;->updateTspState(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_43
    const/4 v2, 0x0

    :try_start_44
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/sec/tsp/cmd"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_65

    const-string v4, "TspStateManagerInternal"

    const-string v5, "The file is not existed."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catch Ljava/io/FileNotFoundException; {:try_start_44 .. :try_end_58} :catch_a8
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_58} :catch_9e
    .catchall {:try_start_44 .. :try_end_58} :catchall_9c

    if-eqz v2, :cond_63

    :try_start_5a
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5d} :catch_5e

    goto :goto_63

    :catch_5e
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_64

    :cond_63
    :goto_63
    nop

    :goto_64
    return-void

    :cond_65
    :try_start_65
    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-nez v4, :cond_7f

    const-string v4, "TspStateManagerInternal"

    const-string v5, "The file cannot write."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72
    .catch Ljava/io/FileNotFoundException; {:try_start_65 .. :try_end_72} :catch_a8
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_72} :catch_9e
    .catchall {:try_start_65 .. :try_end_72} :catchall_9c

    if-eqz v2, :cond_7d

    :try_start_74
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_77} :catch_78

    goto :goto_7d

    :catch_78
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7e

    :cond_7d
    :goto_7d
    nop

    :goto_7e
    return-void

    :cond_7f
    :try_start_7f
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v2, v4

    const-string v4, "UTF-8"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_91
    .catch Ljava/io/FileNotFoundException; {:try_start_7f .. :try_end_91} :catch_a8
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_91} :catch_9e
    .catchall {:try_start_7f .. :try_end_91} :catchall_9c

    nop

    :try_start_92
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_95} :catch_96

    goto :goto_9b

    :catch_96
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b2

    :cond_9b
    :goto_9b
    goto :goto_b2

    :catchall_9c
    move-exception v3

    goto :goto_b3

    :catch_9e
    move-exception v3

    :try_start_9f
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a2
    .catchall {:try_start_9f .. :try_end_a2} :catchall_9c

    if-eqz v2, :cond_9b

    :try_start_a4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_a7} :catch_96

    goto :goto_9b

    :catch_a8
    move-exception v3

    :try_start_a9
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_ac
    .catchall {:try_start_a9 .. :try_end_ac} :catchall_9c

    if-eqz v2, :cond_9b

    :try_start_ae
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_b1} :catch_96

    goto :goto_9b

    :goto_b2
    return-void

    :goto_b3
    nop

    if-eqz v2, :cond_bf

    :try_start_b6
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_b9} :catch_ba

    goto :goto_bf

    :catch_ba
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    nop

    :cond_bf
    :goto_bf
    throw v3
.end method
