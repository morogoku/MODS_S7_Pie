.class Lcom/android/server/power/PowerManagerService$17;
.super Lcom/samsung/android/cover/CoverManager$CoverStateListener;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$17;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager$CoverStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverAttachStateChanged(Z)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$17;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mFeatureCoverSysfs:Z
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$17200(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    if-eqz v0, :cond_7d

    if-eqz p1, :cond_22

    :try_start_a
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$17;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$17300(Lcom/android/server/power/PowerManagerService;)Lcom/samsung/android/cover/CoverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$17;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    # setter for: Lcom/android/server/power/PowerManagerService;->mCoverType:I
    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->access$12702(Lcom/android/server/power/PowerManagerService;I)I

    :cond_1f
    goto :goto_28

    :catch_20
    move-exception v0

    goto :goto_4e

    :cond_22
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$17;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v1, 0x2

    # setter for: Lcom/android/server/power/PowerManagerService;->mCoverType:I
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$12702(Lcom/android/server/power/PowerManagerService;I)I

    :goto_28
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCoverAttachStateChanged: attach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  mCoverType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$17;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mCoverType:I
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$12700(Lcom/android/server/power/PowerManagerService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_4d} :catch_20

    goto :goto_57

    :goto_4e
    nop

    const-string v1, "PowerManagerService"

    const-string/jumbo v2, "onCoverAttachStateChanged: mCoverManager returns NULL."

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_57
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$17;->this$0:Lcom/android/server/power/PowerManagerService;

    # setter for: Lcom/android/server/power/PowerManagerService;->mlastSetCoverTypeTime:J
    invoke-static {v2, v0, v1}, Lcom/android/server/power/PowerManagerService;->access$12802(Lcom/android/server/power/PowerManagerService;J)J

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$17;->this$0:Lcom/android/server/power/PowerManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCoverAttachStateChanged = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$17;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mCoverType:I
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->access$12700(Lcom/android/server/power/PowerManagerService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/android/server/power/PowerManagerService;->mlastUpdateCoverTypeReason:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/server/power/PowerManagerService;->access$12902(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)Ljava/lang/String;

    :cond_7d
    return-void
.end method

.method public onCoverSwitchStateChanged(Z)V
    .registers 2

    return-void
.end method
