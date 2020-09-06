.class Lcom/android/server/pm/PackageManagerService$32;
.super Ljava/lang/Thread;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->movePackageInternal(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$installedLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$measurePath:Ljava/io/File;

.field final synthetic val$moveId:I

.field final synthetic val$sizeBytes:J

.field final synthetic val$startFreeBytes:J


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/util/concurrent/CountDownLatch;JLjava/io/File;JI)V
    .registers 9

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$32;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$32;->val$installedLatch:Ljava/util/concurrent/CountDownLatch;

    iput-wide p3, p0, Lcom/android/server/pm/PackageManagerService$32;->val$startFreeBytes:J

    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$32;->val$measurePath:Ljava/io/File;

    iput-wide p6, p0, Lcom/android/server/pm/PackageManagerService$32;->val$sizeBytes:J

    iput p8, p0, Lcom/android/server/pm/PackageManagerService$32;->val$moveId:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 19

    move-object/from16 v1, p0

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    move-object v2, v0

    const/4 v3, 0x0

    move v0, v3

    :goto_a
    move v4, v0

    :try_start_b
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$32;->val$installedLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v5, 0x1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v5, v6, v7}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_15} :catch_1a

    if-eqz v0, :cond_19

    nop

    return-void

    :cond_19
    goto :goto_1b

    :catch_1a
    move-exception v0

    :goto_1b
    iget-wide v5, v1, Lcom/android/server/pm/PackageManagerService$32;->val$startFreeBytes:J

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$32;->val$measurePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v7

    sub-long/2addr v5, v7

    iget-wide v7, v1, Lcom/android/server/pm/PackageManagerService$32;->val$sizeBytes:J

    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    const/16 v7, 0xa

    if-eqz v0, :cond_40

    const-wide/16 v8, 0x50

    mul-long/2addr v8, v5

    iget-wide v10, v1, Lcom/android/server/pm/PackageManagerService$32;->val$sizeBytes:J

    div-long v12, v8, v10

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x50

    invoke-static/range {v12 .. v17}, Landroid/util/MathUtils;->constrain(JJJ)J

    move-result-wide v8

    long-to-int v0, v8

    add-int/2addr v0, v7

    goto :goto_42

    :cond_40
    const/16 v0, 0x64

    :goto_42
    if-gt v4, v0, :cond_46

    if-ne v4, v0, :cond_52

    :cond_46
    const/16 v8, 0x5a

    if-ge v4, v8, :cond_4f

    invoke-virtual {v2, v7}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v7

    goto :goto_50

    :cond_4f
    move v7, v3

    :goto_50
    add-int v0, v4, v7

    :cond_52
    move v4, v0

    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService$32;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/PackageManagerService$MoveCallbacks;
    invoke-static {v7}, Lcom/android/server/pm/PackageManagerService;->access$8100(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$MoveCallbacks;

    move-result-object v7

    iget v8, v1, Lcom/android/server/pm/PackageManagerService$32;->val$moveId:I

    # invokes: Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->notifyStatusChanged(II)V
    invoke-static {v7, v8, v0}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->access$7500(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;II)V

    goto :goto_a
.end method
