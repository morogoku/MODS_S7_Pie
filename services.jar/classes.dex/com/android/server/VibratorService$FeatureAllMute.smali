.class Lcom/android/server/VibratorService$FeatureAllMute;
.super Lcom/android/server/VibratorService$SecFeature;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FeatureAllMute"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/VibratorService$FeatureAllMute;->this$0:Lcom/android/server/VibratorService;

    const-string v0, "FeatureAllMute"

    invoke-direct {p0, p1, v0}, Lcom/android/server/VibratorService$SecFeature;-><init>(Lcom/android/server/VibratorService;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/server/VibratorService$SecFeature;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public isMute(Ljava/lang/String;Landroid/os/VibrationEffect$SemMagnitudeType;)Z
    .registers 7

    invoke-virtual {p0}, Lcom/android/server/VibratorService$FeatureAllMute;->isOn()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_62

    sget-object v0, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_FORCE:Landroid/os/VibrationEffect$SemMagnitudeType;

    if-eq p2, v0, :cond_62

    iget-object v0, p0, Lcom/android/server/VibratorService$FeatureAllMute;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mActAlwaysPkgs:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$7200(Lcom/android/server/VibratorService;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const-string v0, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mActAlwaysPkgs.contains : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", so we must not block vibration from caller,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_37
    const-string v0, "VibratorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mAllMute : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/VibratorService$FeatureAllMute;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mFeatureAllMute:Lcom/android/server/VibratorService$FeatureAllMute;
    invoke-static {v2}, Lcom/android/server/VibratorService;->access$7100(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$FeatureAllMute;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/VibratorService$FeatureAllMute;->isOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " MagnitudeType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_62
    return v1
.end method

.method public reset()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/VibratorService$FeatureAllMute;->off()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/VibratorService$FeatureAllMute;->setUri(Landroid/net/Uri;)V

    return-void
.end method
