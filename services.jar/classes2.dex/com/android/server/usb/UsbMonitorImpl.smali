.class public Lcom/android/server/usb/UsbMonitorImpl;
.super Ljava/lang/Object;
.source "UsbMonitorImpl.java"


# static fields
.field static final DEBUG:Z = true

.field private static final DEFAULT_CHECK_INTERVAL:J = 0xea60L

.field private static final MAX_LOG_FILESIZE:J = 0x19000L

.field static final READ_USB_STATE:I = 0x1

.field static final TAG:Ljava/lang/String; = "UsbMonitorService"

.field private static final USB_STATISTICS_LOG_PATH:Ljava/lang/String; = "/efs/usb_hw_param/usb_hw_param.log"

.field private static final USB_STATISTICS_SYSFS_PATH:Ljava/lang/String; = "/sys/class/usb_notify/usb_control/usb_hw_param"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mLogFile:Ljava/io/File;

.field private mState:Ljava/lang/String;

.field private mSysFs:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/usb/UsbMonitorImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbMonitorImpl$1;-><init>(Lcom/android/server/usb/UsbMonitorImpl;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbMonitorImpl;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usb/UsbMonitorImpl;->mState:Ljava/lang/String;

    const-string v0, "UsbMonitorImpl()"

    invoke-static {v0}, Lcom/android/server/usb/UsbMonitorImpl;->dbgPrint(Ljava/lang/String;)V

    return-void
.end method

.method private static dbgPrint(Ljava/lang/String;)V
    .registers 2

    const-string v0, "UsbMonitorService"

    invoke-static {v0, p0}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private readSysFsFile(Ljava/io/File;)Ljava/lang/String;
    .registers 5

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readSysFsFile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/usb/UsbMonitorImpl;->dbgPrint(Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method private static stringToFile(Ljava/io/File;Ljava/lang/String;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    :try_start_3
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_16
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stringToFile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/usb/UsbMonitorImpl;->dbgPrint(Ljava/lang/String;)V

    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3f} :catch_4c

    :try_start_3f
    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_47

    :try_start_42
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    nop

    goto :goto_71

    :catchall_47
    move-exception v1

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    throw v1
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_4c} :catch_4c

    :catch_4c
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to write "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/usb/UsbMonitorImpl;->dbgPrint(Ljava/lang/String;)V

    :goto_71
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .registers 3

    const-string v0, "Current UsbMonitor state:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method postReadUsbMsg(J)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/usb/UsbMonitorImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/usb/UsbMonitorImpl;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/usb/UsbMonitorImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method readUsbState()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/usb/UsbMonitorImpl;->mSysFs:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbMonitorImpl;->readSysFsFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbMonitorImpl;->mState:Ljava/lang/String;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/server/usb/UsbMonitorImpl;->mState:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, p0, Lcom/android/server/usb/UsbMonitorImpl;->mLogFile:Ljava/io/File;

    invoke-static {v1, v0}, Lcom/android/server/usb/UsbMonitorImpl;->stringToFile(Ljava/io/File;Ljava/lang/String;)V

    :cond_17
    iput-object v0, p0, Lcom/android/server/usb/UsbMonitorImpl;->mState:Ljava/lang/String;

    const-wide/32 v1, 0xea60

    invoke-virtual {p0, v1, v2}, Lcom/android/server/usb/UsbMonitorImpl;->postReadUsbMsg(J)V

    return-void
.end method

.method public systemReady()V
    .registers 3

    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/usb_hw_param/usb_hw_param.log"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbMonitorImpl;->mLogFile:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/usb_notify/usb_control/usb_hw_param"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbMonitorImpl;->mSysFs:Ljava/io/File;

    const-string/jumbo v0, "systemReady()"

    invoke-static {v0}, Lcom/android/server/usb/UsbMonitorImpl;->dbgPrint(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/usb/UsbMonitorImpl;->mSysFs:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_27

    const-string/jumbo v0, "systemReady() there is no /sys/class/usb_notify/usb_control/usb_hw_param , motitor function will be of"

    invoke-static {v0}, Lcom/android/server/usb/UsbMonitorImpl;->dbgPrint(Ljava/lang/String;)V

    return-void

    :cond_27
    iget-object v0, p0, Lcom/android/server/usb/UsbMonitorImpl;->mLogFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3d

    const-string/jumbo v0, "systemReady() initial state, nothing in the log"

    invoke-static {v0}, Lcom/android/server/usb/UsbMonitorImpl;->dbgPrint(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/usb/UsbMonitorImpl;->mSysFs:Ljava/io/File;

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/android/server/usb/UsbMonitorImpl;->stringToFile(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_48

    :cond_3d
    iget-object v0, p0, Lcom/android/server/usb/UsbMonitorImpl;->mSysFs:Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/usb/UsbMonitorImpl;->mLogFile:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbMonitorImpl;->readSysFsFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/usb/UsbMonitorImpl;->stringToFile(Ljava/io/File;Ljava/lang/String;)V

    :goto_48
    invoke-virtual {p0}, Lcom/android/server/usb/UsbMonitorImpl;->readUsbState()V

    return-void
.end method
