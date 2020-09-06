.class public Lcom/android/server/utils/sysfwutil/DexObserver;
.super Ljava/lang/Object;
.source "DexObserver.java"


# static fields
.field private static final CCIC_DOCK_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/sec/ccic"

.field private static final TAG:Ljava/lang/String; = "DexObserverFW"


# instance fields
.field private volatile mDexMode:Z

.field private final mDexStateLock:Ljava/lang/Object;

.field private final mDexUEventObserver:Landroid/os/UEventObserver;

.field private final mListeners:Ljava/util/concurrent/BlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingDeque<",
            "Lcom/android/server/utils/sysfwutil/DexConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mSemiDexMode:Z

.field private mTestModeOn:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/utils/sysfwutil/DexObserver;->mDexMode:Z

    iput-boolean v0, p0, Lcom/android/server/utils/sysfwutil/DexObserver;->mSemiDexMode:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/utils/sysfwutil/DexObserver;->mDexStateLock:Ljava/lang/Object;

    new-instance v1, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v1, p0, Lcom/android/server/utils/sysfwutil/DexObserver;->mListeners:Ljava/util/concurrent/BlockingDeque;

    iput-boolean v0, p0, Lcom/android/server/utils/sysfwutil/DexObserver;->mTestModeOn:Z

    new-instance v0, Lcom/android/server/utils/sysfwutil/DexObserver$1;

    invoke-direct {v0, p0}, Lcom/android/server/utils/sysfwutil/DexObserver$1;-><init>(Lcom/android/server/utils/sysfwutil/DexObserver;)V

    iput-object v0, p0, Lcom/android/server/utils/sysfwutil/DexObserver;->mDexUEventObserver:Landroid/os/UEventObserver;

    const-string v0, "DexObserverFW"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Started"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/utils/sysfwutil/DexObserver;->mTestModeOn:Z

    if-eqz v2, :cond_32

    const-string v2, " TestModeOn"

    goto :goto_34

    :cond_32
    const-string v2, ""

    :goto_34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/utils/sysfwutil/DexObserver;->mDexUEventObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVPATH=/devices/virtual/sec/ccic"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/utils/sysfwutil/DexObserver;ILandroid/os/UEventObserver$UEvent;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/utils/sysfwutil/DexObserver;->setDexState(ILandroid/os/UEventObserver$UEvent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/utils/sysfwutil/DexObserver;)Ljava/util/concurrent/BlockingDeque;
    .registers 2

    iget-object v0, p0, Lcom/android/server/utils/sysfwutil/DexObserver;->mListeners:Ljava/util/concurrent/BlockingDeque;

    return-object v0
.end method

.method private onUpdateDexMode()V
    .registers 5

    iget-boolean v0, p0, Lcom/android/server/utils/sysfwutil/DexObserver;->mTestModeOn:Z

    if-eqz v0, :cond_1b

    const-string v0, "DexObserverFW"

    const-string/jumbo v1, "setDexMode() : delay ++"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x7530

    :try_start_e
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_11} :catch_12

    goto :goto_13

    :catch_12
    move-exception v0

    :goto_13
    const-string v0, "DexObserverFW"

    const-string/jumbo v1, "setDexMode() : delay --"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    iget-object v0, p0, Lcom/android/server/utils/sysfwutil/DexObserver;->mDexStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1e
    const-string v1, "DexObserverFW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDexMode() : mDexMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/utils/sysfwutil/DexObserver;->mDexMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mSemiDexMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/utils/sysfwutil/DexObserver;->mSemiDexMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/server/utils/sysfwutil/DexObserver;->mDexMode:Z

    if-nez v1, :cond_49

    iget-boolean v1, p0, Lcom/android/server/utils/sysfwutil/DexObserver;->mSemiDexMode:Z

    if-eqz v1, :cond_54

    :cond_49
    new-instance v1, Lcom/android/server/utils/sysfwutil/DexObserver$2;

    const-string/jumbo v2, "notifyListeners"

    invoke-direct {v1, p0, v2}, Lcom/android/server/utils/sysfwutil/DexObserver$2;-><init>(Lcom/android/server/utils/sysfwutil/DexObserver;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/utils/sysfwutil/DexObserver$2;->start()V

    :cond_54
    monitor-exit v0

    return-void

    :catchall_56
    move-exception v1

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_1e .. :try_end_58} :catchall_56

    throw v1
.end method

.method private setDexState(ILandroid/os/UEventObserver$UEvent;)V
    .registers 6

    const-string v0, "DexObserverFW"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDockState() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x72

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3c

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_29

    packed-switch p1, :pswitch_data_44

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/utils/sysfwutil/DexObserver;->mDexMode:Z

    iput-boolean v0, p0, Lcom/android/server/utils/sysfwutil/DexObserver;->mSemiDexMode:Z

    goto :goto_3f

    :cond_29
    const-string v0, "USBPD_IDS"

    invoke-virtual {p2, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3f

    const-string v2, "04e8:a027"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    iput-boolean v1, p0, Lcom/android/server/utils/sysfwutil/DexObserver;->mSemiDexMode:Z

    goto :goto_3f

    :cond_3c
    :pswitch_3c
    iput-boolean v1, p0, Lcom/android/server/utils/sysfwutil/DexObserver;->mDexMode:Z

    nop

    :cond_3f
    :goto_3f
    invoke-direct {p0}, Lcom/android/server/utils/sysfwutil/DexObserver;->onUpdateDexMode()V

    return-void

    nop

    :pswitch_data_44
    .packed-switch 0x6d
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
    .end packed-switch
.end method


# virtual methods
.method public addListener(Lcom/android/server/utils/sysfwutil/DexConnectionListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/utils/sysfwutil/DexObserver;->mListeners:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/utils/sysfwutil/DexObserver;->mDexStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current DexModeObserver state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/utils/sysfwutil/DexObserver;->mDexMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public isDexModeOn()Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/utils/sysfwutil/DexObserver;->mDexStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "DexObserverFW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDexModeOn() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/utils/sysfwutil/DexObserver;->mDexMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/server/utils/sysfwutil/DexObserver;->mDexMode:Z

    monitor-exit v0

    return v1

    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public isSemiDexModeOn()Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/utils/sysfwutil/DexObserver;->mDexStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "DexObserverFW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSemiDexModeOn() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/utils/sysfwutil/DexObserver;->mSemiDexMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/server/utils/sysfwutil/DexObserver;->mSemiDexMode:Z

    monitor-exit v0

    return v1

    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method
