.class public Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;
.super Ljava/lang/Object;
.source "KeyguardBiometricRotationManager.java"


# static fields
.field private static volatile sInstance:Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;


# instance fields
.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/keyguard/biometric/KeyguardBiometricRotationListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentRotation:I

.field private mIsRotationListening:Z

.field private mRotationWatcher:Landroid/view/IRotationWatcher;

.field private mStateChangeHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;->mIsRotationListening:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;->mCallbacks:Ljava/util/List;

    new-instance v0, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager$1;-><init>(Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;)V

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;->mRotationWatcher:Landroid/view/IRotationWatcher;

    new-instance v0, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager$2;-><init>(Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;->mStateChangeHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;->shouldListenForKeyguardRotation()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;->mStateChangeHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;->mCurrentRotation:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;->mCurrentRotation:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;
    .locals 2

    sget-object v0, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;->sInstance:Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;->sInstance:Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;

    invoke-direct {v1, p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;->sInstance:Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;->sInstance:Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;

    return-object v0
.end method

.method static synthetic lambda$addListener$0(Lcom/android/keyguard/biometric/KeyguardBiometricRotationListener;Ljava/lang/ref/WeakReference;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$removeListener$1(Lcom/android/keyguard/biometric/KeyguardBiometricRotationListener;Ljava/lang/ref/WeakReference;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shouldListenForKeyguardRotation()V
    .locals 7

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    move v3, v0

    const-string v4, "KeyguardBiometricRotationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "shouldListenForKeyguardRotation() shouldListening = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", mIsRotationListening = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;->mIsRotationListening:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "(isThereAnyCallback="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_1

    iget-boolean v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;->mIsRotationListening:Z

    if-nez v1, :cond_2

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    iget-object v4, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;->mRotationWatcher:Landroid/view/IRotationWatcher;

    iget-object v5, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getDisplayId()I

    move-result v5

    invoke-interface {v1, v4, v5}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iput-boolean v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;->mIsRotationListening:Z

    const-string v1, "KeyguardBiometricRotationManager"

    const-string v2, "listening keyguard rotation start"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_1
    iget-boolean v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;->mIsRotationListening:Z

    if-eqz v2, :cond_2

    :try_start_1
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    iget-object v4, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;->mRotationWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v2, v4}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    nop

    iput-boolean v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;->mIsRotationListening:Z

    const-string v1, "KeyguardBiometricRotationManager"

    const-string v2, "listening keyguard rotation stop"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/keyguard/biometric/KeyguardBiometricRotationListener;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricRotationManager$cYSZl7jqAoRuLtcTVQb-nC665fY;

    invoke-direct {v1, p1}, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricRotationManager$cYSZl7jqAoRuLtcTVQb-nC665fY;-><init>(Lcom/android/keyguard/biometric/KeyguardBiometricRotationListener;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;->mCallbacks:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;->mCurrentRotation:I

    invoke-interface {p1, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricRotationListener;->onRotationChanged(I)V

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;->shouldListenForKeyguardRotation()V

    return-void
.end method

.method public removeListener(Lcom/android/keyguard/biometric/KeyguardBiometricRotationListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricRotationManager$f-NKhqbMnn3QjXxCQZr4fR0vvC4;

    invoke-direct {v1, p1}, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricRotationManager$f-NKhqbMnn3QjXxCQZr4fR0vvC4;-><init>(Lcom/android/keyguard/biometric/KeyguardBiometricRotationListener;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;->mCallbacks:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;->shouldListenForKeyguardRotation()V

    return-void
.end method
