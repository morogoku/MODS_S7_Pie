.class Lcom/android/server/VibratorService$FeatureSetting$1;
.super Landroid/content/BroadcastReceiver;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/VibratorService$FeatureSetting;->addGoodCatchFilter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/VibratorService$FeatureSetting;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService$FeatureSetting;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/VibratorService$FeatureSetting$1;->this$1:Lcom/android/server/VibratorService$FeatureSetting;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.app.goodcatch"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    const-string v1, "VibratorService"

    const-string/jumbo v2, "reset"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/VibratorService$FeatureSetting$1;->this$1:Lcom/android/server/VibratorService$FeatureSetting;

    invoke-virtual {v1}, Lcom/android/server/VibratorService$FeatureSetting;->reset()V

    iget-object v1, p0, Lcom/android/server/VibratorService$FeatureSetting$1;->this$1:Lcom/android/server/VibratorService$FeatureSetting;

    iget-object v1, v1, Lcom/android/server/VibratorService$FeatureSetting;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mFeatureAllMute:Lcom/android/server/VibratorService$FeatureAllMute;
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$7100(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$FeatureAllMute;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VibratorService$FeatureAllMute;->reset()V

    iget-object v1, p0, Lcom/android/server/VibratorService$FeatureSetting$1;->this$1:Lcom/android/server/VibratorService$FeatureSetting;

    iget-object v1, v1, Lcom/android/server/VibratorService$FeatureSetting;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mFeatureAppMute:Lcom/android/server/VibratorService$FeatureAppMute;
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$6900(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$FeatureAppMute;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VibratorService$FeatureAppMute;->reset()V

    :cond_33
    return-void
.end method
