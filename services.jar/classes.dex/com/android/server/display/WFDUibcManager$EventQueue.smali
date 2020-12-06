.class Lcom/android/server/display/WFDUibcManager$EventQueue;
.super Ljava/lang/Object;
.source "WFDUibcManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WFDUibcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventQueue"
.end annotation


# instance fields
.field private keyInputs:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/android/server/display/WFDUibcManager$KeyInput;",
            ">;"
        }
    .end annotation
.end field

.field private rotateInputs:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private scrollInputs:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/android/server/display/WFDUibcManager$ScrollInput;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/display/WFDUibcManager;

.field private touchInputs:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/android/server/display/WFDUibcManager$TouchInput;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/server/display/WFDUibcManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/WFDUibcManager$EventQueue;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/WFDUibcManager$EventQueue;->touchInputs:Ljava/util/concurrent/BlockingQueue;

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/WFDUibcManager$EventQueue;->keyInputs:Ljava/util/concurrent/BlockingQueue;

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/WFDUibcManager$EventQueue;->scrollInputs:Ljava/util/concurrent/BlockingQueue;

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/WFDUibcManager$EventQueue;->rotateInputs:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/WFDUibcManager;Lcom/android/server/display/WFDUibcManager$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/display/WFDUibcManager$EventQueue;-><init>(Lcom/android/server/display/WFDUibcManager;)V

    return-void
.end method


# virtual methods
.method public addKeyEvent(III)V
    .registers 10

    # getter for: Lcom/android/server/display/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_31

    const-string v0, "WFDUibcManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addKeyEvent(action : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", keyCode1 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", keyCode2 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    const/4 v0, 0x3

    if-ne p1, v0, :cond_36

    const/4 v0, 0x0

    :goto_35
    goto :goto_3b

    :cond_36
    const/4 v0, 0x4

    if-ne p1, v0, :cond_85

    const/4 v0, 0x1

    goto :goto_35

    :goto_3b
    nop

    const/4 v1, 0x0

    if-eqz p2, :cond_60

    new-instance v2, Lcom/android/server/display/WFDUibcManager$KeyInput;

    invoke-direct {v2, v1}, Lcom/android/server/display/WFDUibcManager$KeyInput;-><init>(Lcom/android/server/display/WFDUibcManager$1;)V

    iput v0, v2, Lcom/android/server/display/WFDUibcManager$KeyInput;->action:I

    iput p2, v2, Lcom/android/server/display/WFDUibcManager$KeyInput;->keyCode:I

    :try_start_48
    iget-object v3, p0, Lcom/android/server/display/WFDUibcManager$EventQueue;->keyInputs:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_4d
    .catch Ljava/lang/InterruptedException; {:try_start_48 .. :try_end_4d} :catch_57
    .catch Ljava/lang/NullPointerException; {:try_start_48 .. :try_end_4d} :catch_4e

    goto :goto_5f

    :catch_4e
    move-exception v3

    const-string v4, "WFDUibcManager"

    const-string v5, "Null pointer exception"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_60

    :catch_57
    move-exception v3

    const-string v4, "WFDUibcManager"

    const-string v5, "Interrupted when waiting to insert to queue"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5f
    nop

    :cond_60
    :goto_60
    if-eqz p3, :cond_84

    new-instance v2, Lcom/android/server/display/WFDUibcManager$KeyInput;

    invoke-direct {v2, v1}, Lcom/android/server/display/WFDUibcManager$KeyInput;-><init>(Lcom/android/server/display/WFDUibcManager$1;)V

    move-object v1, v2

    iput v0, v1, Lcom/android/server/display/WFDUibcManager$KeyInput;->action:I

    iput p3, v1, Lcom/android/server/display/WFDUibcManager$KeyInput;->keyCode:I

    :try_start_6c
    iget-object v2, p0, Lcom/android/server/display/WFDUibcManager$EventQueue;->keyInputs:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_71
    .catch Ljava/lang/InterruptedException; {:try_start_6c .. :try_end_71} :catch_7b
    .catch Ljava/lang/NullPointerException; {:try_start_6c .. :try_end_71} :catch_72

    goto :goto_83

    :catch_72
    move-exception v2

    const-string v3, "WFDUibcManager"

    const-string v4, "Null pointer exception"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_84

    :catch_7b
    move-exception v2

    const-string v3, "WFDUibcManager"

    const-string v4, "Interrupted when waiting to insert to queue"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_83
    nop

    :cond_84
    :goto_84
    return-void

    :cond_85
    const-string v0, "WFDUibcManager"

    const-string v1, "Unknown Key Event"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public addRotateEvent(II)V
    .registers 7

    if-gez p1, :cond_4

    mul-int/lit8 p2, p2, -0x1

    :cond_4
    int-to-float v0, p1

    int-to-float v1, p2

    const v2, 0x3b7f9724    # 0.0039f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x43340000    # 180.0f

    mul-float/2addr v0, v1

    const v1, 0x4048f5c3    # 3.14f

    div-float/2addr v0, v1

    # getter for: Lcom/android/server/display/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->access$500()Z

    move-result v1

    if-eqz v1, :cond_33

    const-string v1, "WFDUibcManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addRotateEvent(degree : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    :try_start_33
    iget-object v1, p0, Lcom/android/server/display/WFDUibcManager$EventQueue;->rotateInputs:Ljava/util/concurrent/BlockingQueue;

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_40
    .catch Ljava/lang/InterruptedException; {:try_start_33 .. :try_end_40} :catch_4a
    .catch Ljava/lang/NullPointerException; {:try_start_33 .. :try_end_40} :catch_41

    goto :goto_52

    :catch_41
    move-exception v1

    const-string v2, "WFDUibcManager"

    const-string v3, "Null pointer exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_53

    :catch_4a
    move-exception v1

    const-string v2, "WFDUibcManager"

    const-string v3, "Interrupted when waiting to insert to queue"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_52
    nop

    :goto_53
    return-void
.end method

.method public addScrollEvent(IIII)V
    .registers 9

    # getter for: Lcom/android/server/display/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_39

    const-string v0, "WFDUibcManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addScrollEvent(action : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", direction : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", scrollBit : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    new-instance v0, Lcom/android/server/display/WFDUibcManager$ScrollInput;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/display/WFDUibcManager$ScrollInput;-><init>(Lcom/android/server/display/WFDUibcManager$1;)V

    iput p1, v0, Lcom/android/server/display/WFDUibcManager$ScrollInput;->action:I

    iput p3, v0, Lcom/android/server/display/WFDUibcManager$ScrollInput;->direction:I

    iput p4, v0, Lcom/android/server/display/WFDUibcManager$ScrollInput;->scrollBit:I

    :try_start_45
    iget-object v1, p0, Lcom/android/server/display/WFDUibcManager$EventQueue;->scrollInputs:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_4a
    .catch Ljava/lang/InterruptedException; {:try_start_45 .. :try_end_4a} :catch_54
    .catch Ljava/lang/NullPointerException; {:try_start_45 .. :try_end_4a} :catch_4b

    goto :goto_5c

    :catch_4b
    move-exception v1

    const-string v2, "WFDUibcManager"

    const-string v3, "Null pointer exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5d

    :catch_54
    move-exception v1

    const-string v2, "WFDUibcManager"

    const-string v3, "Interrupted when waiting to insert to queue"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5c
    nop

    :goto_5d
    return-void
.end method

.method public addTouchEvent(II[Lcom/android/server/display/WFDUibcManager$TouchPointer;)V
    .registers 9

    # getter for: Lcom/android/server/display/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->access$500()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5f

    const-string v0, "WFDUibcManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addTouchEvent(action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pointers : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_2b
    if-ge v0, p2, :cond_5f

    const-string v2, "WFDUibcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "touchEvent("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") X : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p3, v0

    iget v4, v4, Lcom/android/server/display/WFDUibcManager$TouchPointer;->x:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", Y : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p3, v0

    iget v4, v4, Lcom/android/server/display/WFDUibcManager$TouchPointer;->y:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    :cond_5f
    new-instance v0, Lcom/android/server/display/WFDUibcManager$TouchInput;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/server/display/WFDUibcManager$TouchInput;-><init>(Lcom/android/server/display/WFDUibcManager$1;)V

    if-nez p1, :cond_6a

    iput v1, v0, Lcom/android/server/display/WFDUibcManager$TouchInput;->action:I

    goto :goto_75

    :cond_6a
    const/4 v3, 0x1

    if-ne p1, v3, :cond_70

    iput v3, v0, Lcom/android/server/display/WFDUibcManager$TouchInput;->action:I

    goto :goto_75

    :cond_70
    const/4 v3, 0x2

    if-ne p1, v3, :cond_c1

    iput v3, v0, Lcom/android/server/display/WFDUibcManager$TouchInput;->action:I

    :goto_75
    iput p2, v0, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointers:I

    new-array v3, p2, [Lcom/android/server/display/WFDUibcManager$TouchPointer;

    iput-object v3, v0, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    nop

    :goto_7c
    if-ge v1, p2, :cond_a8

    iget-object v3, v0, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    new-instance v4, Lcom/android/server/display/WFDUibcManager$TouchPointer;

    invoke-direct {v4, v2}, Lcom/android/server/display/WFDUibcManager$TouchPointer;-><init>(Lcom/android/server/display/WFDUibcManager$1;)V

    aput-object v4, v3, v1

    iget-object v3, v0, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v3, v3, v1

    aget-object v4, p3, v1

    iget v4, v4, Lcom/android/server/display/WFDUibcManager$TouchPointer;->id:I

    iput v4, v3, Lcom/android/server/display/WFDUibcManager$TouchPointer;->id:I

    iget-object v3, v0, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v3, v3, v1

    aget-object v4, p3, v1

    iget v4, v4, Lcom/android/server/display/WFDUibcManager$TouchPointer;->x:F

    iput v4, v3, Lcom/android/server/display/WFDUibcManager$TouchPointer;->x:F

    iget-object v3, v0, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v3, v3, v1

    aget-object v4, p3, v1

    iget v4, v4, Lcom/android/server/display/WFDUibcManager$TouchPointer;->y:F

    iput v4, v3, Lcom/android/server/display/WFDUibcManager$TouchPointer;->y:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_7c

    :cond_a8
    :try_start_a8
    iget-object v1, p0, Lcom/android/server/display/WFDUibcManager$EventQueue;->touchInputs:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_ad
    .catch Ljava/lang/InterruptedException; {:try_start_a8 .. :try_end_ad} :catch_b7
    .catch Ljava/lang/NullPointerException; {:try_start_a8 .. :try_end_ad} :catch_ae

    goto :goto_bf

    :catch_ae
    move-exception v1

    const-string v2, "WFDUibcManager"

    const-string v3, "Null pointer exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c0

    :catch_b7
    move-exception v1

    const-string v2, "WFDUibcManager"

    const-string v3, "Interrupted when waiting to insert to queue"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_bf
    nop

    :goto_c0
    return-void

    :cond_c1
    const-string v1, "WFDUibcManager"

    const-string v2, "Unknown Touch Event"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getKeyEvent()Lcom/android/server/display/WFDUibcManager$KeyInput;
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/WFDUibcManager$EventQueue;->keyInputs:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v1, 0x3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/WFDUibcManager$KeyInput;
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    const-string v1, "WFDUibcManager"

    const-string v2, "Interrupted when waiting to read from queue"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public getRotateEvent()Ljava/lang/Integer;
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/WFDUibcManager$EventQueue;->rotateInputs:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v1, 0x3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    const-string v1, "WFDUibcManager"

    const-string v2, "Interrupted when waiting to read from queue"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public getScrollEvent()Lcom/android/server/display/WFDUibcManager$ScrollInput;
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/WFDUibcManager$EventQueue;->scrollInputs:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v1, 0x3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/WFDUibcManager$ScrollInput;
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    const-string v1, "WFDUibcManager"

    const-string v2, "Interrupted when waiting to read from queue"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public getTouchEvent()Lcom/android/server/display/WFDUibcManager$TouchInput;
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/WFDUibcManager$EventQueue;->touchInputs:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v1, 0x3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/WFDUibcManager$TouchInput;
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    const-string v1, "WFDUibcManager"

    const-string v2, "Interrupted when waiting to read from queue"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public sendRCAEvent(ILjava/lang/String;)V
    .registers 7

    # getter for: Lcom/android/server/display/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "WFDUibcManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RCA Event("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), path : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    const/4 v0, 0x1

    if-eqz p1, :cond_31

    if-eq p1, v0, :cond_31

    const-string v0, "WFDUibcManager"

    const-string v1, "Unknown RCA Event"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_31
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    if-ne p1, v0, :cond_3e

    const-string v0, "com.samsung.android.bixby.intent.action.START_BIXBY_WITH_AUDIO_SRC"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_45

    :cond_3e
    if-nez p1, :cond_45

    const-string v0, "com.samsung.android.bixby.intent.action.STOP_BIXBY_WITH_AUDIO_SRC"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_45
    :goto_45
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.bixby.agent"

    const-string v3, "com.samsung.android.bixby.external.HeadsetReceiveService"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "com.samsung.android.bixby.agent"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "AudioSrcFile"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/display/WFDUibcManager$EventQueue;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/display/WFDUibcManager;->access$700(Lcom/android/server/display/WFDUibcManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
