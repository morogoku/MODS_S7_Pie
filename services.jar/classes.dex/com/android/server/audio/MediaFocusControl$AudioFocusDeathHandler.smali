.class public Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
.super Ljava/lang/Object;
.source "MediaFocusControl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/MediaFocusControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AudioFocusDeathHandler"
.end annotation


# instance fields
.field private mCb:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/audio/MediaFocusControl;


# direct methods
.method constructor <init>(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->mCb:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 6

    # getter for: Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/audio/MediaFocusControl;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_5
    const-string v1, "MediaFocusControl"

    const-string v2, "AudioFocus audio focus client died"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    # getter for: Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->access$100(Lcom/android/server/audio/MediaFocusControl;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->mCb:Landroid/os/IBinder;

    # invokes: Lcom/android/server/audio/MediaFocusControl;->removeFocusEntryForExtPolicy(Landroid/os/IBinder;)V
    invoke-static {v1, v2}, Lcom/android/server/audio/MediaFocusControl;->access$200(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V

    goto :goto_83

    :cond_1c
    sget-boolean v1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_MULTI_SOUND:Z

    if-eqz v1, :cond_57

    const/4 v1, 0x0

    move v2, v1

    :goto_22
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    # getter for: Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;
    invoke-static {v3}, Lcom/android/server/audio/MediaFocusControl;->access$300(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->size()I

    move-result v3

    if-ge v2, v3, :cond_47

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    # getter for: Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;
    invoke-static {v4}, Lcom/android/server/audio/MediaFocusControl;->access$300(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->valueAt(I)Ljava/util/Stack;

    move-result-object v4

    # setter for: Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;
    invoke-static {v3, v4}, Lcom/android/server/audio/MediaFocusControl;->access$402(Lcom/android/server/audio/MediaFocusControl;Ljava/util/Stack;)Ljava/util/Stack;

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->mCb:Landroid/os/IBinder;

    # invokes: Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntryOnDeath(Landroid/os/IBinder;)V
    invoke-static {v3, v4}, Lcom/android/server/audio/MediaFocusControl;->access$500(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_47
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    # getter for: Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;
    invoke-static {v3}, Lcom/android/server/audio/MediaFocusControl;->access$300(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->getFocusStack(I)Ljava/util/Stack;

    move-result-object v1

    # setter for: Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;
    invoke-static {v2, v1}, Lcom/android/server/audio/MediaFocusControl;->access$402(Lcom/android/server/audio/MediaFocusControl;Ljava/util/Stack;)Ljava/util/Stack;

    goto :goto_5e

    :cond_57
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->mCb:Landroid/os/IBinder;

    # invokes: Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntryOnDeath(Landroid/os/IBinder;)V
    invoke-static {v1, v2}, Lcom/android/server/audio/MediaFocusControl;->access$500(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V

    :goto_5e
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    # getter for: Lcom/android/server/audio/MediaFocusControl;->mIgnoredFocus:Lcom/android/server/audio/FocusRequester;
    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->access$600(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/FocusRequester;

    move-result-object v1

    if-eqz v1, :cond_83

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    # getter for: Lcom/android/server/audio/MediaFocusControl;->mIgnoredFocus:Lcom/android/server/audio/FocusRequester;
    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->access$600(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/FocusRequester;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->mCb:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Lcom/android/server/audio/FocusRequester;->hasSameBinder(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_83

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    # getter for: Lcom/android/server/audio/MediaFocusControl;->mIgnoredFocus:Lcom/android/server/audio/FocusRequester;
    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->access$600(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/FocusRequester;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->release()V

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/audio/MediaFocusControl;->mIgnoredFocus:Lcom/android/server/audio/FocusRequester;
    invoke-static {v1, v2}, Lcom/android/server/audio/MediaFocusControl;->access$602(Lcom/android/server/audio/MediaFocusControl;Lcom/android/server/audio/FocusRequester;)Lcom/android/server/audio/FocusRequester;

    :cond_83
    :goto_83
    monitor-exit v0

    return-void

    :catchall_85
    move-exception v1

    monitor-exit v0
    :try_end_87
    .catchall {:try_start_5 .. :try_end_87} :catchall_85

    throw v1
.end method
