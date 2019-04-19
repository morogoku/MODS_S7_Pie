.class final Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "AdaptiveDisplayColorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->DEBUG:Z
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$700(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "AdaptiveDisplayColorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SettingsObserver: onChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    # invokes: Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->setting_is_changed()V
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$800(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V

    return-void
.end method
