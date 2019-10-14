.class Lcom/android/server/desktopmode/HardwareManager$2;
.super Ljava/lang/Object;
.source "HardwareManager.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/HardwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/HardwareManager;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/HardwareManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/desktopmode/HardwareManager$2;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputDeviceAdded(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager$2;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    # invokes: Lcom/android/server/desktopmode/HardwareManager;->updateInputDeviceStatus()V
    invoke-static {v0}, Lcom/android/server/desktopmode/HardwareManager;->access$500(Lcom/android/server/desktopmode/HardwareManager;)V

    return-void
.end method

.method public onInputDeviceChanged(I)V
    .registers 2

    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager$2;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    # invokes: Lcom/android/server/desktopmode/HardwareManager;->updateInputDeviceStatus()V
    invoke-static {v0}, Lcom/android/server/desktopmode/HardwareManager;->access$500(Lcom/android/server/desktopmode/HardwareManager;)V

    return-void
.end method
