.class public final synthetic Lcom/android/systemui/aod/-$$Lambda$PluginAODManager$mk_xevo2gouSjyYXb0GL3m3uz-4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/aod/PluginAODManager;

.field private final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/aod/PluginAODManager;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/aod/-$$Lambda$PluginAODManager$mk_xevo2gouSjyYXb0GL3m3uz-4;->f$0:Lcom/android/systemui/aod/PluginAODManager;

    iput-object p2, p0, Lcom/android/systemui/aod/-$$Lambda$PluginAODManager$mk_xevo2gouSjyYXb0GL3m3uz-4;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/aod/-$$Lambda$PluginAODManager$mk_xevo2gouSjyYXb0GL3m3uz-4;->f$0:Lcom/android/systemui/aod/PluginAODManager;

    iget-object v1, p0, Lcom/android/systemui/aod/-$$Lambda$PluginAODManager$mk_xevo2gouSjyYXb0GL3m3uz-4;->f$1:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/android/systemui/aod/PluginAODManager;->lambda$sendIntent$2(Lcom/android/systemui/aod/PluginAODManager;Landroid/content/Intent;)V

    return-void
.end method
