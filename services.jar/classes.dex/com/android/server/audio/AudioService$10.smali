.class Lcom/android/server/audio/AudioService$10;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/audio/AudioService$10;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart(Ljava/lang/String;)V
    .registers 5

    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStart "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/server/audio/AudioService;->GOODCATCH_MODE:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$18400()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/server/audio/AudioService$10;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mGoodCatchOn:[Z
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$20000(Lcom/android/server/audio/AudioService;)[Z

    move-result-object v0

    aput-boolean v2, v0, v1

    goto :goto_42

    :cond_2e
    # getter for: Lcom/android/server/audio/AudioService;->GOODCATCH_MODE:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$18400()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/android/server/audio/AudioService$10;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mGoodCatchOn:[Z
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$20000(Lcom/android/server/audio/AudioService;)[Z

    move-result-object v0

    aput-boolean v2, v0, v2

    :cond_42
    :goto_42
    return-void
.end method

.method public onStop(Ljava/lang/String;)V
    .registers 5

    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/server/audio/AudioService;->GOODCATCH_MODE:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$18400()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/audio/AudioService$10;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mGoodCatchOn:[Z
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$20000(Lcom/android/server/audio/AudioService;)[Z

    move-result-object v0

    aput-boolean v1, v0, v1

    goto :goto_42

    :cond_2d
    # getter for: Lcom/android/server/audio/AudioService;->GOODCATCH_MODE:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$18400()[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/android/server/audio/AudioService$10;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mGoodCatchOn:[Z
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$20000(Lcom/android/server/audio/AudioService;)[Z

    move-result-object v0

    aput-boolean v1, v0, v2

    :cond_42
    :goto_42
    return-void
.end method
