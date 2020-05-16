.class Lcom/android/systemui/aod/AODWallpaperState$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "AODWallpaperState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/aod/AODWallpaperState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/aod/AODWallpaperState;


# virtual methods
.method public onKeyguardVisibilityChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/aod/AODWallpaperState$1;->this$0:Lcom/android/systemui/aod/AODWallpaperState;

    invoke-static {v0, p1}, Lcom/android/systemui/aod/AODWallpaperState;->access$002(Lcom/android/systemui/aod/AODWallpaperState;Z)Z

    return-void
.end method
