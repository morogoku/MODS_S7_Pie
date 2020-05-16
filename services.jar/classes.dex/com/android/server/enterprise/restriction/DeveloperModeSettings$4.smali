.class Lcom/android/server/enterprise/restriction/DeveloperModeSettings$4;
.super Ljava/util/HashMap;
.source "DeveloperModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/restriction/DeveloperModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "persist.sys.ui.hw"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "persist.sys.debug.multi_window"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "debug.hwui.show_dirty_regions"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "debug.hwui.show_layers_updates"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "debug.hwui.overdraw"

    const-string v2, ""

    invoke-virtual {p0, v0, v2}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "debug.hwui.show_non_rect_clip"

    const-string v2, ""

    invoke-virtual {p0, v0, v2}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "debug.egl.force_msaa"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "debug.hwui.profile"

    const-string v2, ""

    invoke-virtual {p0, v0, v2}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "debug.egl.trace"

    const-string v2, ""

    invoke-virtual {p0, v0, v2}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "persist.sys.hdcp_checking"

    const-string/jumbo v2, "drm-only"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "persist.logd.size"

    const-string v2, "262144"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "debug.layout"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
