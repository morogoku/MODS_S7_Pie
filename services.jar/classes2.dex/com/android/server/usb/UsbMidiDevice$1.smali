.class Lcom/android/server/usb/UsbMidiDevice$1;
.super Ljava/lang/Object;
.source "UsbMidiDevice.java"

# interfaces
.implements Landroid/media/midi/MidiDeviceServer$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbMidiDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbMidiDevice;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbMidiDevice;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/usb/UsbMidiDevice$1;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .registers 1

    return-void
.end method

.method public onDeviceStatusChanged(Landroid/media/midi/MidiDeviceServer;Landroid/media/midi/MidiDeviceStatus;)V
    .registers 10

    invoke-virtual {p2}, Landroid/media/midi/MidiDeviceStatus;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceInfo;->getInputPortCount()I

    move-result v1

    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceInfo;->getOutputPortCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v4

    :goto_f
    if-ge v5, v1, :cond_1c

    invoke-virtual {p2, v5}, Landroid/media/midi/MidiDeviceStatus;->isInputPortOpen(I)Z

    move-result v6

    if-eqz v6, :cond_19

    const/4 v3, 0x1

    goto :goto_1c

    :cond_19
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_1c
    :goto_1c
    if-nez v3, :cond_2c

    nop

    :goto_1f
    if-ge v4, v2, :cond_2c

    invoke-virtual {p2, v4}, Landroid/media/midi/MidiDeviceStatus;->getOutputPortOpenCount(I)I

    move-result v5

    if-lez v5, :cond_29

    const/4 v3, 0x1

    goto :goto_2c

    :cond_29
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :cond_2c
    :goto_2c
    iget-object v4, p0, Lcom/android/server/usb/UsbMidiDevice$1;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    # getter for: Lcom/android/server/usb/UsbMidiDevice;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/usb/UsbMidiDevice;->access$000(Lcom/android/server/usb/UsbMidiDevice;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    if-eqz v3, :cond_45

    :try_start_35
    iget-object v5, p0, Lcom/android/server/usb/UsbMidiDevice$1;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    # getter for: Lcom/android/server/usb/UsbMidiDevice;->mIsOpen:Z
    invoke-static {v5}, Lcom/android/server/usb/UsbMidiDevice;->access$100(Lcom/android/server/usb/UsbMidiDevice;)Z

    move-result v5

    if-nez v5, :cond_45

    iget-object v5, p0, Lcom/android/server/usb/UsbMidiDevice$1;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    # invokes: Lcom/android/server/usb/UsbMidiDevice;->openLocked()Z
    invoke-static {v5}, Lcom/android/server/usb/UsbMidiDevice;->access$200(Lcom/android/server/usb/UsbMidiDevice;)Z

    goto :goto_54

    :catchall_43
    move-exception v5

    goto :goto_56

    :cond_45
    if-nez v3, :cond_54

    iget-object v5, p0, Lcom/android/server/usb/UsbMidiDevice$1;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    # getter for: Lcom/android/server/usb/UsbMidiDevice;->mIsOpen:Z
    invoke-static {v5}, Lcom/android/server/usb/UsbMidiDevice;->access$100(Lcom/android/server/usb/UsbMidiDevice;)Z

    move-result v5

    if-eqz v5, :cond_54

    iget-object v5, p0, Lcom/android/server/usb/UsbMidiDevice$1;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    # invokes: Lcom/android/server/usb/UsbMidiDevice;->closeLocked()V
    invoke-static {v5}, Lcom/android/server/usb/UsbMidiDevice;->access$300(Lcom/android/server/usb/UsbMidiDevice;)V

    :cond_54
    :goto_54
    monitor-exit v4

    return-void

    :goto_56
    monitor-exit v4
    :try_end_57
    .catchall {:try_start_35 .. :try_end_57} :catchall_43

    throw v5
.end method
