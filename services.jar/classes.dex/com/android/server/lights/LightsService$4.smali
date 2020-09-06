.class Lcom/android/server/lights/LightsService$4;
.super Lcom/samsung/android/cover/CoverManager$StateListener;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method constructor <init>(Lcom/android/server/lights/LightsService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/lights/LightsService$4;->this$0:Lcom/android/server/lights/LightsService;

    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/lights/LightsService$4;->this$0:Lcom/android/server/lights/LightsService;

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    # setter for: Lcom/android/server/lights/LightsService;->mCoverType:I
    invoke-static {v0, v1}, Lcom/android/server/lights/LightsService;->access$202(Lcom/android/server/lights/LightsService;I)I

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_32

    const-string v0, "LightsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onCoverStateChanged : SWITCH_STATE_COVER_OPEN covertype:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/lights/LightsService$4;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mCoverType:I
    invoke-static {v3}, Lcom/android/server/lights/LightsService;->access$200(Lcom/android/server/lights/LightsService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/lights/LightsService$4;->this$0:Lcom/android/server/lights/LightsService;

    # setter for: Lcom/android/server/lights/LightsService;->mCoverOpened:Z
    invoke-static {v0, v1}, Lcom/android/server/lights/LightsService;->access$302(Lcom/android/server/lights/LightsService;Z)Z

    goto :goto_90

    :cond_32
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onCoverStateChanged : SWITCH_STATE_COVER_CLOSE covertype"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/lights/LightsService$4;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mCoverType:I
    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$200(Lcom/android/server/lights/LightsService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/lights/LightsService$4;->this$0:Lcom/android/server/lights/LightsService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/lights/LightsService;->mCoverOpened:Z
    invoke-static {v0, v1}, Lcom/android/server/lights/LightsService;->access$302(Lcom/android/server/lights/LightsService;Z)Z

    iget-object v0, p0, Lcom/android/server/lights/LightsService$4;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mCoverType:I
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$200(Lcom/android/server/lights/LightsService;)I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_90

    iget-object v0, p0, Lcom/android/server/lights/LightsService$4;->this$0:Lcom/android/server/lights/LightsService;

    const-class v1, Lcom/android/server/lights/LightsManager;

    # invokes: Lcom/android/server/lights/LightsService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/android/server/lights/LightsService;->access$3300(Lcom/android/server/lights/LightsService;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/lights/LightsManager;

    if-eqz v0, :cond_90

    iget-object v1, p0, Lcom/android/server/lights/LightsService$4;->this$0:Lcom/android/server/lights/LightsService;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v2

    # setter for: Lcom/android/server/lights/LightsService;->mCoverBatteryLight:Lcom/android/server/lights/Light;
    invoke-static {v1, v2}, Lcom/android/server/lights/LightsService;->access$3402(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/Light;)Lcom/android/server/lights/Light;

    iget-object v1, p0, Lcom/android/server/lights/LightsService$4;->this$0:Lcom/android/server/lights/LightsService;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v2

    # setter for: Lcom/android/server/lights/LightsService;->mCoverNotiLight:Lcom/android/server/lights/Light;
    invoke-static {v1, v2}, Lcom/android/server/lights/LightsService;->access$3502(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/Light;)Lcom/android/server/lights/Light;

    iget-object v1, p0, Lcom/android/server/lights/LightsService$4;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mCoverBatteryLight:Lcom/android/server/lights/Light;
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$3400(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/Light;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/lights/Light;->turnOff()V

    iget-object v1, p0, Lcom/android/server/lights/LightsService$4;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mCoverNotiLight:Lcom/android/server/lights/Light;
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$3500(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/Light;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/lights/Light;->turnOff()V

    :cond_90
    :goto_90
    return-void
.end method
