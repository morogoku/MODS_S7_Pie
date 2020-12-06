.class public final synthetic Lcom/android/systemui/aod/-$$Lambda$PluginAODManager$JYIRodwsNdHfkiEGK3MUttvsvS0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/samsung/systemui/splugins/aod/PluginAODLiveClockManager$Callback;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/aod/PluginAODManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/aod/PluginAODManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/aod/-$$Lambda$PluginAODManager$JYIRodwsNdHfkiEGK3MUttvsvS0;->f$0:Lcom/android/systemui/aod/PluginAODManager;

    return-void
.end method


# virtual methods
.method public final getLiveClockImageData(ILandroid/os/Bundle;)[B
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/aod/-$$Lambda$PluginAODManager$JYIRodwsNdHfkiEGK3MUttvsvS0;->f$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v0, p1, p2}, Lcom/android/systemui/aod/PluginAODManager;->lambda$new$1(Lcom/android/systemui/aod/PluginAODManager;ILandroid/os/Bundle;)[B

    move-result-object p1

    return-object p1
.end method
