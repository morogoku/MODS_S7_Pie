.class Lcom/android/server/power/ShutdownThread$15;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->uncrypt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field final synthetic val$done:[Z

.field final synthetic val$progressListener:Landroid/os/RecoverySystem$ProgressListener;


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;Landroid/os/RecoverySystem$ProgressListener;[Z)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$15;->this$0:Lcom/android/server/power/ShutdownThread;

    iput-object p2, p0, Lcom/android/server/power/ShutdownThread$15;->val$progressListener:Landroid/os/RecoverySystem$ProgressListener;

    iput-object p3, p0, Lcom/android/server/power/ShutdownThread$15;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$15;->this$0:Lcom/android/server/power/ShutdownThread;

    # getter for: Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$200(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "recovery"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x2

    move-object v2, v0

    move v0, v1

    :goto_10
    const/4 v3, 0x0

    if-lez v0, :cond_3f

    :try_start_13
    sget-object v4, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    iget-object v4, p0, Lcom/android/server/power/ShutdownThread$15;->this$0:Lcom/android/server/power/ShutdownThread;

    # getter for: Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/power/ShutdownThread;->access$200(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/power/ShutdownThread$15;->val$progressListener:Landroid/os/RecoverySystem$ProgressListener;

    invoke-static {v4, v5, v6}, Landroid/os/RecoverySystem;->processPackage(Landroid/content/Context;Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;)V

    const-string v4, "ShutdownThread"

    const-string/jumbo v5, "uncrypt finished. No need to retry uncrypt"

    invoke-static {v4, v5}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_33} :catch_34

    goto :goto_3f

    :catch_34
    move-exception v3

    add-int/lit8 v0, v0, -0x1

    const-string v4, "ShutdownThread"

    const-string v5, "Error uncrypting file"

    invoke-static {v4, v5, v3}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_10

    :cond_3f
    :goto_3f
    iget-object v4, p0, Lcom/android/server/power/ShutdownThread$15;->val$done:[Z

    const/4 v5, 0x1

    aput-boolean v5, v4, v3

    # setter for: Lcom/android/server/power/ShutdownThread;->uncryptStep:I
    invoke-static {v1}, Lcom/android/server/power/ShutdownThread;->access$402(I)I

    return-void
.end method
