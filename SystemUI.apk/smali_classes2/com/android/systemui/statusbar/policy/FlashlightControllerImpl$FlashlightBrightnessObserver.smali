.class Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$FlashlightBrightnessObserver;
.super Landroid/database/ContentObserver;
.source "FlashlightControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlashlightBrightnessObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)V
    .locals 3

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$FlashlightBrightnessObserver;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->access$500(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "Flashlight_brightness_level"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$FlashlightBrightnessObserver;->onChange(Z)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$FlashlightBrightnessObserver;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "Flashlight_brightness_level"

    const/16 v2, 0x3ec

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$FlashlightBrightnessObserver;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$FlashlightBrightnessObserver;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->access$1300(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->access$1202(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;I)I

    const-string v1, "FlashlightController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FlashlightBrightnessObserver onReceive : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$FlashlightBrightnessObserver;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->access$1200(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
