.class public Lcom/android/systemui/aod/AODIntentService;
.super Landroid/app/IntentService;
.source "AODIntentService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "AODIntentService"

    invoke-direct {p0, v0}, Lcom/android/systemui/aod/AODIntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/android/systemui/aod/PluginAODManager;->getInstance()Lcom/android/systemui/aod/PluginAODManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/aod/PluginAODManager;->sendIntent(Landroid/content/Intent;)V

    return-void
.end method
