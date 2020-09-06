.class Lcom/android/server/power/ShutdownThread$14;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/os/RecoverySystem$ProgressListener;


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


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$14;->this$0:Lcom/android/server/power/ShutdownThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(I)V
    .registers 6

    const/16 v0, 0x64

    if-ltz p1, :cond_36

    if-ge p1, v0, :cond_36

    int-to-double v0, p1

    const-wide/high16 v2, 0x4054000000000000L    # 80.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    double-to-int v0, v0

    # setter for: Lcom/android/server/power/ShutdownThread;->progressStatus:I
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$802(I)I

    const/16 v0, 0x14

    # += operator for: Lcom/android/server/power/ShutdownThread;->progressStatus:I
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$812(I)I

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$14;->this$0:Lcom/android/server/power/ShutdownThread;

    # getter for: Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$200(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x10408a4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    # setter for: Lcom/android/server/power/ShutdownThread;->progressMessage:Ljava/lang/CharSequence;
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$702(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    # getter for: Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$100()Lcom/android/server/power/ShutdownThread;

    move-result-object v0

    # getter for: Lcom/android/server/power/ShutdownThread;->progressStatus:I
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$800()I

    move-result v1

    # getter for: Lcom/android/server/power/ShutdownThread;->progressMessage:Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$700()Ljava/lang/CharSequence;

    move-result-object v2

    # invokes: Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/power/ShutdownThread;->access$4200(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    goto :goto_5a

    :cond_36
    if-ne p1, v0, :cond_5a

    # setter for: Lcom/android/server/power/ShutdownThread;->progressStatus:I
    invoke-static {p1}, Lcom/android/server/power/ShutdownThread;->access$802(I)I

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$14;->this$0:Lcom/android/server/power/ShutdownThread;

    # getter for: Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$200(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x10408a6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    # setter for: Lcom/android/server/power/ShutdownThread;->progressMessage:Ljava/lang/CharSequence;
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$702(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    # getter for: Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$100()Lcom/android/server/power/ShutdownThread;

    move-result-object v0

    # getter for: Lcom/android/server/power/ShutdownThread;->progressStatus:I
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$800()I

    move-result v1

    # getter for: Lcom/android/server/power/ShutdownThread;->progressMessage:Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$700()Ljava/lang/CharSequence;

    move-result-object v2

    # invokes: Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/power/ShutdownThread;->access$4200(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    :cond_5a
    :goto_5a
    return-void
.end method
