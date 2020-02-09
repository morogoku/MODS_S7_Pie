.class Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$EventListenerInfo;
.super Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$ListenerInfo;
.source "SemDesktopModeStateNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventListenerInfo"
.end annotation


# instance fields
.field final listener:Lcom/samsung/android/desktopmode/IEventListener;

.field final synthetic this$0:Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;Lcom/samsung/android/desktopmode/IEventListener;Ljava/lang/String;II)V
    .registers 6

    iput-object p1, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$EventListenerInfo;->this$0:Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    invoke-direct {p0, p3, p4, p5}, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$ListenerInfo;-><init>(Ljava/lang/String;II)V

    iput-object p2, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$EventListenerInfo;->listener:Lcom/samsung/android/desktopmode/IEventListener;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    invoke-super {p0}, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$ListenerInfo;->binderDied()V

    iget-object v0, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$EventListenerInfo;->this$0:Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    # getter for: Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->mEventListeners:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->access$100(Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    :try_start_a
    iget-object v1, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$EventListenerInfo;->this$0:Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    # getter for: Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->mEventListeners:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->access$100(Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$EventListenerInfo;->listener:Lcom/samsung/android/desktopmode/IEventListener;

    invoke-interface {v2}, Lcom/samsung/android/desktopmode/IEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_25

    iget-object v0, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$EventListenerInfo;->listener:Lcom/samsung/android/desktopmode/IEventListener;

    invoke-interface {v0}, Lcom/samsung/android/desktopmode/IEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void

    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method
