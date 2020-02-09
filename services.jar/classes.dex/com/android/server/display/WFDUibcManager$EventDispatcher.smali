.class Lcom/android/server/display/WFDUibcManager$EventDispatcher;
.super Lcom/android/server/display/WFDUibcManager$EventQueue;
.source "WFDUibcManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WFDUibcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventDispatcher"
.end annotation


# static fields
.field private static final DEFAULT_DEVICE_ID:I = 0x0

.field private static final UIBC_META_SHIFT_ON:I = 0x800


# instance fields
.field public volatile isRunning:Z

.field private mCapsLock:Z

.field private mKeyInfoTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/display/WFDUibcManager$KeyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyInput:Lcom/android/server/display/WFDUibcManager$KeyInput;

.field private mLastBroadcastTime:J

.field private mMetaFlag:I

.field private mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

.field private mRotationInput:Ljava/lang/Integer;

.field private mScrollInput:Lcom/android/server/display/WFDUibcManager$ScrollInput;

.field private mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

.field private mTouchPointerTable:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/display/WFDUibcManager$TouchPointer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/display/WFDUibcManager;


# direct methods
.method constructor <init>(Lcom/android/server/display/WFDUibcManager;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/WFDUibcManager$EventQueue;-><init>(Lcom/android/server/display/WFDUibcManager;Lcom/android/server/display/WFDUibcManager$1;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->isRunning:Z

    iput-object v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iput-object v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyInput:Lcom/android/server/display/WFDUibcManager$KeyInput;

    iput-object v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mScrollInput:Lcom/android/server/display/WFDUibcManager$ScrollInput;

    iput-object v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mRotationInput:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    iput-object v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchPointerTable:Ljava/util/TreeMap;

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyInfoTable:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    iput-boolean v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mCapsLock:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mLastBroadcastTime:J

    return-void
.end method

.method private getMetaFlag(IZ)V
    .registers 12

    const/16 v0, 0x77

    const/4 v1, 0x1

    const/16 v2, 0x72

    const/16 v3, 0x71

    const/16 v4, 0x3a

    const/16 v5, 0x39

    const/16 v6, 0x3c

    const/16 v7, 0x3b

    if-eqz p2, :cond_68

    if-eq p1, v7, :cond_15

    if-ne p1, v6, :cond_2a

    :cond_15
    iget v8, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/2addr v1, v8

    iput v1, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    if-ne p1, v7, :cond_22

    iget v1, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_22
    if-ne p1, v6, :cond_2a

    iget v1, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_2a
    if-eq p1, v5, :cond_2e

    if-ne p1, v4, :cond_44

    :cond_2e
    iget v1, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    if-ne p1, v5, :cond_3c

    iget v1, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_3c
    if-ne p1, v4, :cond_44

    iget v1, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_44
    if-eq p1, v3, :cond_48

    if-ne p1, v2, :cond_5e

    :cond_48
    iget v1, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    if-ne p1, v3, :cond_56

    iget v1, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_56
    if-ne p1, v2, :cond_5e

    iget v1, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_5e
    if-ne p1, v0, :cond_db

    iget v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    goto/16 :goto_db

    :cond_68
    if-eq p1, v7, :cond_6c

    if-ne p1, v6, :cond_82

    :cond_6c
    iget v8, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit8 v8, v8, -0x2

    iput v8, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    if-ne p1, v7, :cond_7a

    iget v7, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit8 v7, v7, -0x41

    iput v7, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_7a
    if-ne p1, v6, :cond_82

    iget v6, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit16 v6, v6, -0x81

    iput v6, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_82
    if-eq p1, v5, :cond_86

    if-ne p1, v4, :cond_9c

    :cond_86
    iget v6, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit8 v6, v6, -0x3

    iput v6, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    if-ne p1, v5, :cond_94

    iget v5, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit8 v5, v5, -0x11

    iput v5, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_94
    if-ne p1, v4, :cond_9c

    iget v4, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit8 v4, v4, -0x21

    iput v4, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_9c
    if-eq p1, v3, :cond_a0

    if-ne p1, v2, :cond_b6

    :cond_a0
    iget v4, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit16 v4, v4, -0x1001

    iput v4, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    if-ne p1, v3, :cond_ae

    iget v3, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit16 v3, v3, -0x2001

    iput v3, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_ae
    if-ne p1, v2, :cond_b6

    iget v2, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit16 v2, v2, -0x4001

    iput v2, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_b6
    if-ne p1, v0, :cond_be

    iget v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_be
    const/16 v0, 0x73

    if-ne p1, v0, :cond_db

    iget-boolean v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mCapsLock:Z

    if-nez v0, :cond_d0

    iget v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    const/high16 v2, 0x100000

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    iput-boolean v1, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mCapsLock:Z

    goto :goto_db

    :cond_d0
    iget v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mCapsLock:Z

    :cond_db
    :goto_db
    return-void
.end method

.method private handleKeyEvent()V
    .registers 26

    move-object/from16 v0, p0

    # getter for: Lcom/android/server/display/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->access$500()Z

    move-result v1

    if-eqz v1, :cond_20

    const-string v1, "WFDUibcManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received KeyEvent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyInput:Lcom/android/server/display/WFDUibcManager$KeyInput;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iget-object v1, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mExternalDisplayID:I
    invoke-static {v1}, Lcom/android/server/display/WFDUibcManager;->access$600(Lcom/android/server/display/WFDUibcManager;)I

    move-result v1

    if-gez v1, :cond_2d

    iget-object v1, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # invokes: Lcom/android/server/display/WFDUibcManager;->updateDisplayInfos()V
    invoke-static {v1}, Lcom/android/server/display/WFDUibcManager;->access$300(Lcom/android/server/display/WFDUibcManager;)V

    :cond_2d
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x8000000

    iget-object v8, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyInput:Lcom/android/server/display/WFDUibcManager$KeyInput;

    iget v8, v8, Lcom/android/server/display/WFDUibcManager$KeyInput;->keyCode:I

    and-int/lit16 v8, v8, 0x800

    const/4 v9, 0x1

    if-lez v8, :cond_49

    or-int/lit16 v1, v1, 0x80

    or-int/2addr v1, v9

    iget-object v8, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyInput:Lcom/android/server/display/WFDUibcManager$KeyInput;

    iget v10, v8, Lcom/android/server/display/WFDUibcManager$KeyInput;->keyCode:I

    and-int/lit16 v10, v10, -0x801

    iput v10, v8, Lcom/android/server/display/WFDUibcManager$KeyInput;->keyCode:I

    :cond_49
    iget-object v8, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyInput:Lcom/android/server/display/WFDUibcManager$KeyInput;

    iget v8, v8, Lcom/android/server/display/WFDUibcManager$KeyInput;->action:I

    const/4 v10, 0x0

    if-nez v8, :cond_d7

    # getter for: Lcom/android/server/display/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->access$500()Z

    move-result v8

    if-eqz v8, :cond_5d

    const-string v8, "WFDUibcManager"

    const-string v11, "KeyEvent.ACTION_DOWN"

    invoke-static {v8, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v8, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyInfoTable:Ljava/util/HashMap;

    iget-object v11, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyInput:Lcom/android/server/display/WFDUibcManager$KeyInput;

    iget v11, v11, Lcom/android/server/display/WFDUibcManager$KeyInput;->keyCode:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_97

    iget-object v8, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyInfoTable:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    const/16 v11, 0xf

    if-ge v8, v11, :cond_94

    new-instance v8, Lcom/android/server/display/WFDUibcManager$KeyInfo;

    const/4 v11, 0x0

    invoke-direct {v8, v11}, Lcom/android/server/display/WFDUibcManager$KeyInfo;-><init>(Lcom/android/server/display/WFDUibcManager$1;)V

    iput-wide v4, v8, Lcom/android/server/display/WFDUibcManager$KeyInfo;->keyTime:J

    iput v7, v8, Lcom/android/server/display/WFDUibcManager$KeyInfo;->keyFlag:I

    iput v10, v8, Lcom/android/server/display/WFDUibcManager$KeyInfo;->keyRepeatCount:I

    iget-object v11, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyInfoTable:Ljava/util/HashMap;

    iget-object v12, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyInput:Lcom/android/server/display/WFDUibcManager$KeyInput;

    iget v12, v12, Lcom/android/server/display/WFDUibcManager$KeyInput;->keyCode:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_94
    move-wide v2, v4

    const/4 v6, 0x0

    goto :goto_cf

    :cond_97
    iget-object v8, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyInfoTable:Ljava/util/HashMap;

    iget-object v11, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyInput:Lcom/android/server/display/WFDUibcManager$KeyInput;

    iget v11, v11, Lcom/android/server/display/WFDUibcManager$KeyInput;->keyCode:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/display/WFDUibcManager$KeyInfo;

    iget v11, v8, Lcom/android/server/display/WFDUibcManager$KeyInfo;->keyFlag:I

    or-int/2addr v11, v7

    iput v11, v8, Lcom/android/server/display/WFDUibcManager$KeyInfo;->keyFlag:I

    iget v11, v8, Lcom/android/server/display/WFDUibcManager$KeyInfo;->keyRepeatCount:I

    add-int/2addr v11, v9

    iput v11, v8, Lcom/android/server/display/WFDUibcManager$KeyInfo;->keyRepeatCount:I

    iget v11, v8, Lcom/android/server/display/WFDUibcManager$KeyInfo;->keyRepeatCount:I

    if-lt v11, v9, :cond_bb

    iget v11, v8, Lcom/android/server/display/WFDUibcManager$KeyInfo;->keyFlag:I

    or-int/lit16 v11, v11, 0x80

    iput v11, v8, Lcom/android/server/display/WFDUibcManager$KeyInfo;->keyFlag:I

    :cond_bb
    iget-wide v2, v8, Lcom/android/server/display/WFDUibcManager$KeyInfo;->keyTime:J

    iget v11, v8, Lcom/android/server/display/WFDUibcManager$KeyInfo;->keyFlag:I

    or-int/2addr v7, v11

    iget v6, v8, Lcom/android/server/display/WFDUibcManager$KeyInfo;->keyRepeatCount:I

    # getter for: Lcom/android/server/display/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->access$500()Z

    move-result v11

    if-eqz v11, :cond_cf

    const-string v11, "WFDUibcManager"

    const-string v12, "Long press detected"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cf
    :goto_cf
    iget-object v8, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyInput:Lcom/android/server/display/WFDUibcManager$KeyInput;

    iget v8, v8, Lcom/android/server/display/WFDUibcManager$KeyInput;->keyCode:I

    invoke-direct {v0, v8, v9}, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->getMetaFlag(IZ)V

    goto :goto_127

    :cond_d7
    iget-object v8, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyInput:Lcom/android/server/display/WFDUibcManager$KeyInput;

    iget v8, v8, Lcom/android/server/display/WFDUibcManager$KeyInput;->action:I

    if-ne v8, v9, :cond_127

    # getter for: Lcom/android/server/display/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->access$500()Z

    move-result v8

    if-eqz v8, :cond_ea

    const-string v8, "WFDUibcManager"

    const-string v9, "KeyEvent.ACTION_UP"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ea
    iget-object v8, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyInfoTable:Ljava/util/HashMap;

    iget-object v9, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyInput:Lcom/android/server/display/WFDUibcManager$KeyInput;

    iget v9, v9, Lcom/android/server/display/WFDUibcManager$KeyInput;->keyCode:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11e

    iget-object v8, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyInfoTable:Ljava/util/HashMap;

    iget-object v9, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyInput:Lcom/android/server/display/WFDUibcManager$KeyInput;

    iget v9, v9, Lcom/android/server/display/WFDUibcManager$KeyInput;->keyCode:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/display/WFDUibcManager$KeyInfo;

    iget-wide v2, v8, Lcom/android/server/display/WFDUibcManager$KeyInfo;->keyTime:J

    iget v9, v8, Lcom/android/server/display/WFDUibcManager$KeyInfo;->keyFlag:I

    or-int/2addr v7, v9

    const/4 v6, 0x0

    iget-object v9, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyInfoTable:Ljava/util/HashMap;

    iget-object v11, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyInput:Lcom/android/server/display/WFDUibcManager$KeyInput;

    iget v11, v11, Lcom/android/server/display/WFDUibcManager$KeyInput;->keyCode:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_120

    :cond_11e
    move-wide v2, v4

    const/4 v6, 0x0

    :goto_120
    iget-object v8, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyInput:Lcom/android/server/display/WFDUibcManager$KeyInput;

    iget v8, v8, Lcom/android/server/display/WFDUibcManager$KeyInput;->keyCode:I

    invoke-direct {v0, v8, v10}, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->getMetaFlag(IZ)V

    :cond_127
    :goto_127
    # getter for: Lcom/android/server/display/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->access$500()Z

    move-result v8

    if-eqz v8, :cond_16a

    const-string v8, "WFDUibcManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "KeyCode: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyInput:Lcom/android/server/display/WFDUibcManager$KeyInput;

    iget v11, v11, Lcom/android/server/display/WFDUibcManager$KeyInput;->keyCode:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " DownTime: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " Flag: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " RepeatCnt: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "mMetaFlag: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16a
    if-nez v1, :cond_16e

    iget v1, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    :cond_16e
    const-wide/16 v8, 0x1

    sub-long v13, v2, v8

    iget-object v8, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyInput:Lcom/android/server/display/WFDUibcManager$KeyInput;

    iget v15, v8, Lcom/android/server/display/WFDUibcManager$KeyInput;->action:I

    iget-object v8, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyInput:Lcom/android/server/display/WFDUibcManager$KeyInput;

    iget v8, v8, Lcom/android/server/display/WFDUibcManager$KeyInput;->keyCode:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    iget-object v9, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mExternalDisplayID:I
    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$600(Lcom/android/server/display/WFDUibcManager;)I

    move-result v22

    const/16 v23, 0x101

    const/16 v24, 0x0

    move-wide v11, v2

    move/from16 v16, v8

    move/from16 v17, v6

    move/from16 v18, v1

    move/from16 v21, v7

    invoke-static/range {v11 .. v24}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v8

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v9

    invoke-virtual {v9, v8, v10}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    # getter for: Lcom/android/server/display/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->access$500()Z

    move-result v9

    if-eqz v9, :cond_1b8

    const-string v9, "WFDUibcManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "InjectKeyEvent: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b8
    return-void
.end method

.method private handleRotationEvent()V
    .registers 7

    # getter for: Lcom/android/server/display/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "WFDUibcManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received Rotation Event"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mRotationInput:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    iget-object v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/display/WFDUibcManager;->access$700(Lcom/android/server/display/WFDUibcManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/display/WFDUibcManager;->access$700(Lcom/android/server/display/WFDUibcManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "accelerometer_rotation"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/display/WFDUibcManager;->access$700(Lcom/android/server/display/WFDUibcManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "user_rotation"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    # getter for: Lcom/android/server/display/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_6b

    const-string v2, "WFDUibcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current rotation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6b
    iget-object v2, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mIsKDDIServiceConnected:Z
    invoke-static {v2}, Lcom/android/server/display/WFDUibcManager;->access$200(Lcom/android/server/display/WFDUibcManager;)Z

    move-result v2

    if-eqz v2, :cond_81

    # getter for: Lcom/android/server/display/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_90

    const-string v2, "WFDUibcManager"

    const-string v3, "Setting SPECIAL rotation"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_90

    :cond_81
    mul-int/lit8 v2, v1, 0x5a

    iget-object v3, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mRotationInput:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mRotationInput:Ljava/lang/Integer;

    :cond_90
    :goto_90
    iget-object v2, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mRotationInput:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x168

    rem-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mRotationInput:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mRotationInput:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_b4

    iget-object v2, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mRotationInput:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mRotationInput:Ljava/lang/Integer;

    :cond_b4
    iget-object v2, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mRotationInput:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v4, 0x2d

    const/16 v5, 0x13b

    if-le v2, v5, :cond_c8

    iget-object v2, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mRotationInput:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v2, v3, :cond_d8

    :cond_c8
    iget-object v2, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mRotationInput:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_d9

    iget-object v2, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mRotationInput:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v2, v4, :cond_d9

    :cond_d8
    const/4 v1, 0x0

    :cond_d9
    iget-object v2, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mRotationInput:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x87

    if-le v2, v4, :cond_ec

    iget-object v2, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mRotationInput:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v2, v3, :cond_ec

    const/4 v1, 0x1

    :cond_ec
    iget-object v2, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mRotationInput:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v4, 0xe1

    if-le v2, v3, :cond_ff

    iget-object v2, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mRotationInput:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v2, v4, :cond_ff

    const/4 v1, 0x2

    :cond_ff
    iget-object v2, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mRotationInput:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v2, v4, :cond_110

    iget-object v2, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mRotationInput:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v2, v5, :cond_110

    const/4 v1, 0x3

    :cond_110
    # getter for: Lcom/android/server/display/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_12c

    const-string v2, "WFDUibcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rotation set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12c
    iget-object v2, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/display/WFDUibcManager;->access$700(Lcom/android/server/display/WFDUibcManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "user_rotation"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/display/WFDUibcManager;->access$700(Lcom/android/server/display/WFDUibcManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accelerometer_rotation"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private handleScrollEvent()V
    .registers 28

    move-object/from16 v0, p0

    # getter for: Lcom/android/server/display/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->access$500()Z

    move-result v1

    if-eqz v1, :cond_20

    const-string v1, "WFDUibcManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received Scroll Event"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mScrollInput:Lcom/android/server/display/WFDUibcManager$ScrollInput;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iget-object v1, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mExternalDisplayID:I
    invoke-static {v1}, Lcom/android/server/display/WFDUibcManager;->access$600(Lcom/android/server/display/WFDUibcManager;)I

    move-result v1

    if-gez v1, :cond_2d

    iget-object v1, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # invokes: Lcom/android/server/display/WFDUibcManager;->updateDisplayInfos()V
    invoke-static {v1}, Lcom/android/server/display/WFDUibcManager;->access$300(Lcom/android/server/display/WFDUibcManager;)V

    :cond_2d
    const-wide/16 v1, 0x0

    iget-object v3, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mScrollInput:Lcom/android/server/display/WFDUibcManager$ScrollInput;

    iget v3, v3, Lcom/android/server/display/WFDUibcManager$ScrollInput;->action:I

    const/4 v4, 0x7

    const/4 v5, 0x6

    if-eq v3, v5, :cond_3d

    iget-object v3, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mScrollInput:Lcom/android/server/display/WFDUibcManager$ScrollInput;

    iget v3, v3, Lcom/android/server/display/WFDUibcManager$ScrollInput;->action:I

    if-ne v3, v4, :cond_133

    :cond_3d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mScrollInput:Lcom/android/server/display/WFDUibcManager$ScrollInput;

    iget v3, v3, Lcom/android/server/display/WFDUibcManager$ScrollInput;->scrollBit:I

    iget-object v6, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mScrollInput:Lcom/android/server/display/WFDUibcManager$ScrollInput;

    iget v6, v6, Lcom/android/server/display/WFDUibcManager$ScrollInput;->direction:I

    if-nez v6, :cond_4d

    mul-int/lit8 v3, v3, -0x1

    :cond_4d
    const/4 v6, 0x1

    new-array v7, v6, [Landroid/view/MotionEvent$PointerProperties;

    iput-object v7, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    new-array v7, v6, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v7, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    iget-object v7, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v8, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v8}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    const/4 v9, 0x0

    aput-object v8, v7, v9

    iget-object v7, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v7, v7, v9

    iput v9, v7, Landroid/view/MotionEvent$PointerProperties;->id:I

    iget-object v7, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v7, v7, v9

    const/4 v8, 0x3

    iput v8, v7, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    iget-object v7, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v10, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v10}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v10, v7, v9

    iget-object v7, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mScrollInput:Lcom/android/server/display/WFDUibcManager$ScrollInput;

    iget v7, v7, Lcom/android/server/display/WFDUibcManager$ScrollInput;->action:I

    const/4 v10, 0x0

    if-ne v7, v5, :cond_8d

    iget-object v7, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v7, v7, v9

    invoke-virtual {v7, v9, v10}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    iget-object v7, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v7, v7, v9

    int-to-float v10, v3

    invoke-virtual {v7, v6, v10}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto :goto_a2

    :cond_8d
    iget-object v7, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mScrollInput:Lcom/android/server/display/WFDUibcManager$ScrollInput;

    iget v7, v7, Lcom/android/server/display/WFDUibcManager$ScrollInput;->action:I

    if-ne v7, v4, :cond_a2

    iget-object v7, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v7, v7, v9

    int-to-float v11, v3

    invoke-virtual {v7, v9, v11}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    iget-object v7, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v7, v7, v9

    invoke-virtual {v7, v6, v10}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    :cond_a2
    :goto_a2
    iget-object v6, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v6, v6, v9

    const/16 v7, 0x8

    const/high16 v10, 0x3fc00000    # 1.5f

    invoke-virtual {v6, v7, v10}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    iget-object v6, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v6, v6, v9

    const/4 v7, 0x2

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7, v10}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    iget-object v6, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v6, v6, v9

    const v7, 0x3d23d70a    # 0.04f

    invoke-virtual {v6, v8, v7}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    iget-object v6, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v6, v6, v9

    const/4 v7, 0x4

    const/high16 v8, 0x41700000    # 15.0f

    invoke-virtual {v6, v7, v8}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    iget-object v6, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v6, v6, v9

    const/4 v7, 0x5

    const/high16 v8, 0x41000000    # 8.0f

    invoke-virtual {v6, v7, v8}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    iget-object v6, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v6, v6, v9

    const/high16 v7, 0x41300000    # 11.0f

    invoke-virtual {v6, v5, v7}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    iget-object v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v9

    invoke-virtual {v5, v4, v7}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    const-wide/16 v4, 0xa

    sub-long v10, v1, v4

    sub-long v12, v1, v4

    const/16 v14, 0x8

    const/4 v15, 0x1

    iget-object v4, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    iget-object v5, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/16 v18, 0x0

    const/16 v19, 0x0

    iget-object v6, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mExternalDisplayID:I
    invoke-static {v6}, Lcom/android/server/display/WFDUibcManager;->access$600(Lcom/android/server/display/WFDUibcManager;)I

    move-result v20

    const/high16 v21, 0x3f800000    # 1.0f

    const/high16 v22, 0x3f800000    # 1.0f

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x2002

    const/high16 v26, 0x8000000

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    invoke-static/range {v10 .. v26}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIIFFIIII)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v5

    invoke-virtual {v5, v4, v9}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    # getter for: Lcom/android/server/display/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_133

    const-string v5, "WFDUibcManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "InjectScrollEvent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_133
    return-void
.end method

.method private handleTouchEvent()V
    .registers 35

    move-object/from16 v1, p0

    # getter for: Lcom/android/server/display/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "WFDUibcManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received TouchEvent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iget-object v0, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mExternalDisplayID:I
    invoke-static {v0}, Lcom/android/server/display/WFDUibcManager;->access$600(Lcom/android/server/display/WFDUibcManager;)I

    move-result v0

    if-gez v0, :cond_2d

    iget-object v0, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # invokes: Lcom/android/server/display/WFDUibcManager;->updateDisplayInfos()V
    invoke-static {v0}, Lcom/android/server/display/WFDUibcManager;->access$300(Lcom/android/server/display/WFDUibcManager;)V

    :cond_2d
    iget-object v0, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mPresentDisplayID:I
    invoke-static {v0}, Lcom/android/server/display/WFDUibcManager;->access$000(Lcom/android/server/display/WFDUibcManager;)I

    move-result v0

    const/4 v2, -0x1

    if-le v0, v2, :cond_e2

    iget-object v0, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/display/WFDUibcManager;->access$700(Lcom/android/server/display/WFDUibcManager;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "display"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_87

    const-string v2, "WFDUibcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PresentDisplayID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mPresentDisplayID:I
    invoke-static {v4}, Lcom/android/server/display/WFDUibcManager;->access$000(Lcom/android/server/display/WFDUibcManager;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", UIBCMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mUIBCMode:Lcom/android/server/display/WFDUibcManager$UIBCMode;
    invoke-static {v4}, Lcom/android/server/display/WFDUibcManager;->access$800(Lcom/android/server/display/WFDUibcManager;)Lcom/android/server/display/WFDUibcManager$UIBCMode;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", PresentationOwner : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mPresentDisplayID:I
    invoke-static {v4}, Lcom/android/server/display/WFDUibcManager;->access$000(Lcom/android/server/display/WFDUibcManager;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/hardware/display/DisplayManager;->semGetPresentationOwner(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_87
    iget-object v2, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mUIBCMode:Lcom/android/server/display/WFDUibcManager$UIBCMode;
    invoke-static {v2}, Lcom/android/server/display/WFDUibcManager;->access$800(Lcom/android/server/display/WFDUibcManager;)Lcom/android/server/display/WFDUibcManager$UIBCMode;

    move-result-object v2

    sget-object v3, Lcom/android/server/display/WFDUibcManager$UIBCMode;->PRESENTATION:Lcom/android/server/display/WFDUibcManager$UIBCMode;

    if-eq v2, v3, :cond_b5

    iget-object v2, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mPresentDisplayID:I
    invoke-static {v2}, Lcom/android/server/display/WFDUibcManager;->access$000(Lcom/android/server/display/WFDUibcManager;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->semGetPresentationOwner(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_af

    iget-object v2, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mPresentDisplayID:I
    invoke-static {v2}, Lcom/android/server/display/WFDUibcManager;->access$000(Lcom/android/server/display/WFDUibcManager;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->semGetPresentationOwner(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b5

    :cond_af
    iget-object v2, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # invokes: Lcom/android/server/display/WFDUibcManager;->updateDisplayInfos()V
    invoke-static {v2}, Lcom/android/server/display/WFDUibcManager;->access$300(Lcom/android/server/display/WFDUibcManager;)V

    goto :goto_e2

    :cond_b5
    iget-object v2, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mUIBCMode:Lcom/android/server/display/WFDUibcManager$UIBCMode;
    invoke-static {v2}, Lcom/android/server/display/WFDUibcManager;->access$800(Lcom/android/server/display/WFDUibcManager;)Lcom/android/server/display/WFDUibcManager$UIBCMode;

    move-result-object v2

    sget-object v3, Lcom/android/server/display/WFDUibcManager$UIBCMode;->PRESENTATION:Lcom/android/server/display/WFDUibcManager$UIBCMode;

    if-ne v2, v3, :cond_e2

    iget-object v2, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mPresentDisplayID:I
    invoke-static {v2}, Lcom/android/server/display/WFDUibcManager;->access$000(Lcom/android/server/display/WFDUibcManager;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->semGetPresentationOwner(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_dd

    iget-object v2, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mPresentDisplayID:I
    invoke-static {v2}, Lcom/android/server/display/WFDUibcManager;->access$000(Lcom/android/server/display/WFDUibcManager;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->semGetPresentationOwner(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e2

    :cond_dd
    iget-object v2, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # invokes: Lcom/android/server/display/WFDUibcManager;->updateDisplayInfos()V
    invoke-static {v2}, Lcom/android/server/display/WFDUibcManager;->access$300(Lcom/android/server/display/WFDUibcManager;)V

    :cond_e2
    :goto_e2
    iget-object v0, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/display/WFDUibcManager;->access$700(Lcom/android/server/display/WFDUibcManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v0, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget v0, v0, Lcom/android/server/display/WFDUibcManager$TouchInput;->action:I

    iget-object v3, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v3, v3, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget v3, v3, Lcom/android/server/display/WFDUibcManager$TouchPointer;->id:I

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move v7, v6

    move v6, v5

    move v5, v3

    move v3, v0

    move v0, v4

    :goto_106
    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget v8, v8, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointers:I

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-ge v0, v8, :cond_6f9

    # getter for: Lcom/android/server/display/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->access$500()Z

    move-result v8

    if-eqz v8, :cond_153

    const-string v8, "WFDUibcManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Input Pointer ID : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v13, v13, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v13, v13, v0

    iget v13, v13, Lcom/android/server/display/WFDUibcManager$TouchPointer;->id:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", X: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v13, v13, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v13, v13, v0

    iget v13, v13, Lcom/android/server/display/WFDUibcManager$TouchPointer;->x:F

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, ", Y: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v13, v13, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v13, v13, v0

    iget v13, v13, Lcom/android/server/display/WFDUibcManager$TouchPointer;->y:F

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_153
    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v8, v8, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v8, v8, v0

    iget v12, v8, Lcom/android/server/display/WFDUibcManager$TouchPointer;->x:F

    const v13, 0x38d1b717    # 1.0E-4f

    mul-float/2addr v12, v13

    iput v12, v8, Lcom/android/server/display/WFDUibcManager$TouchPointer;->x:F

    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v8, v8, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v8, v8, v0

    iget v12, v8, Lcom/android/server/display/WFDUibcManager$TouchPointer;->y:F

    mul-float/2addr v12, v13

    iput v12, v8, Lcom/android/server/display/WFDUibcManager$TouchPointer;->y:F

    sget-object v8, Lcom/android/server/display/WFDUibcManager$2;->$SwitchMap$com$android$server$display$WFDUibcManager$UIBCMode:[I

    iget-object v12, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mUIBCMode:Lcom/android/server/display/WFDUibcManager$UIBCMode;
    invoke-static {v12}, Lcom/android/server/display/WFDUibcManager;->access$800(Lcom/android/server/display/WFDUibcManager;)Lcom/android/server/display/WFDUibcManager$UIBCMode;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/display/WFDUibcManager$UIBCMode;->ordinal()I

    move-result v12

    aget v8, v8, v12

    const/high16 v12, 0x40000000    # 2.0f

    packed-switch v8, :pswitch_data_9d4

    goto/16 :goto_54b

    :pswitch_181
    # getter for: Lcom/android/server/display/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->access$500()Z

    move-result v8

    if-eqz v8, :cond_18e

    const-string v8, "WFDUibcManager"

    const-string v9, "UIBCMode is PORTRAIT_DISPLAY"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18e
    iget v8, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v8, v10, :cond_1da

    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayHeight:F
    invoke-static {v8}, Lcom/android/server/display/WFDUibcManager;->access$1300(Lcom/android/server/display/WFDUibcManager;)F

    move-result v8

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mExternalDisplayHeight:F
    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1200(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    mul-float/2addr v8, v9

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayWidth:F
    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1100(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    div-float/2addr v8, v9

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mExternalDisplayWidth:F
    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1400(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    iget-object v13, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v13, v13, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v13, v13, v0

    iget v13, v13, Lcom/android/server/display/WFDUibcManager$TouchPointer;->y:F

    mul-float/2addr v9, v13

    iget-object v13, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mExternalDisplayWidth:F
    invoke-static {v13}, Lcom/android/server/display/WFDUibcManager;->access$1400(Lcom/android/server/display/WFDUibcManager;)F

    move-result v13

    sub-float/2addr v13, v8

    div-float/2addr v13, v12

    iget-object v12, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayWidth:F
    invoke-static {v12}, Lcom/android/server/display/WFDUibcManager;->access$1100(Lcom/android/server/display/WFDUibcManager;)F

    move-result v12

    iget-object v14, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v14, v14, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v14, v14, v0

    iget v14, v14, Lcom/android/server/display/WFDUibcManager$TouchPointer;->x:F

    mul-float v6, v12, v14

    iget-object v12, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayHeight:F
    invoke-static {v12}, Lcom/android/server/display/WFDUibcManager;->access$1300(Lcom/android/server/display/WFDUibcManager;)F

    move-result v12

    sub-float v14, v9, v13

    div-float/2addr v14, v8

    mul-float v7, v12, v14

    goto/16 :goto_2ac

    :cond_1da
    iget v8, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v8, v11, :cond_2ac

    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayRatio:F
    invoke-static {v8}, Lcom/android/server/display/WFDUibcManager;->access$900(Lcom/android/server/display/WFDUibcManager;)F

    move-result v8

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mExternalDisplayRatio:F
    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1000(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_235

    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayHeight:F
    invoke-static {v8}, Lcom/android/server/display/WFDUibcManager;->access$1300(Lcom/android/server/display/WFDUibcManager;)F

    move-result v8

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mExternalDisplayHeight:F
    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1200(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    mul-float/2addr v8, v9

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayWidth:F
    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1100(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    div-float/2addr v8, v9

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mExternalDisplayWidth:F
    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1400(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    iget-object v13, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v13, v13, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v13, v13, v0

    iget v13, v13, Lcom/android/server/display/WFDUibcManager$TouchPointer;->y:F

    mul-float/2addr v9, v13

    iget-object v13, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mExternalDisplayWidth:F
    invoke-static {v13}, Lcom/android/server/display/WFDUibcManager;->access$1400(Lcom/android/server/display/WFDUibcManager;)F

    move-result v13

    sub-float/2addr v13, v8

    div-float/2addr v13, v12

    iget-object v12, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayWidth:F
    invoke-static {v12}, Lcom/android/server/display/WFDUibcManager;->access$1100(Lcom/android/server/display/WFDUibcManager;)F

    move-result v12

    iget-object v14, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v14, v14, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v14, v14, v0

    iget v14, v14, Lcom/android/server/display/WFDUibcManager$TouchPointer;->x:F

    mul-float v6, v12, v14

    iget-object v12, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayHeight:F
    invoke-static {v12}, Lcom/android/server/display/WFDUibcManager;->access$1300(Lcom/android/server/display/WFDUibcManager;)F

    move-result v12

    sub-float v14, v9, v13

    div-float/2addr v14, v8

    mul-float v7, v12, v14

    goto :goto_2ac

    :cond_235
    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayRatio:F
    invoke-static {v8}, Lcom/android/server/display/WFDUibcManager;->access$900(Lcom/android/server/display/WFDUibcManager;)F

    move-result v8

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mExternalDisplayRatio:F
    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1000(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_28c

    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayWidth:F
    invoke-static {v8}, Lcom/android/server/display/WFDUibcManager;->access$1100(Lcom/android/server/display/WFDUibcManager;)F

    move-result v8

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mExternalDisplayWidth:F
    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1400(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    mul-float/2addr v8, v9

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayHeight:F
    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1300(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    div-float/2addr v8, v9

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mExternalDisplayHeight:F
    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1200(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    iget-object v13, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v13, v13, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v13, v13, v0

    iget v13, v13, Lcom/android/server/display/WFDUibcManager$TouchPointer;->x:F

    mul-float/2addr v9, v13

    iget-object v13, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mExternalDisplayHeight:F
    invoke-static {v13}, Lcom/android/server/display/WFDUibcManager;->access$1200(Lcom/android/server/display/WFDUibcManager;)F

    move-result v13

    sub-float/2addr v13, v8

    div-float/2addr v13, v12

    iget-object v12, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayWidth:F
    invoke-static {v12}, Lcom/android/server/display/WFDUibcManager;->access$1100(Lcom/android/server/display/WFDUibcManager;)F

    move-result v12

    sub-float v14, v9, v13

    div-float/2addr v14, v8

    mul-float v6, v12, v14

    iget-object v12, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayHeight:F
    invoke-static {v12}, Lcom/android/server/display/WFDUibcManager;->access$1300(Lcom/android/server/display/WFDUibcManager;)F

    move-result v12

    iget-object v14, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v14, v14, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v14, v14, v0

    iget v14, v14, Lcom/android/server/display/WFDUibcManager$TouchPointer;->y:F

    mul-float v7, v12, v14

    goto :goto_2ac

    :cond_28c
    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayWidth:F
    invoke-static {v8}, Lcom/android/server/display/WFDUibcManager;->access$1100(Lcom/android/server/display/WFDUibcManager;)F

    move-result v8

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v9, v9, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v9, v9, v0

    iget v9, v9, Lcom/android/server/display/WFDUibcManager$TouchPointer;->x:F

    mul-float v6, v8, v9

    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayHeight:F
    invoke-static {v8}, Lcom/android/server/display/WFDUibcManager;->access$1300(Lcom/android/server/display/WFDUibcManager;)F

    move-result v8

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v9, v9, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v9, v9, v0

    iget v9, v9, Lcom/android/server/display/WFDUibcManager$TouchPointer;->y:F

    mul-float v7, v8, v9

    :cond_2ac
    :goto_2ac
    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v8, v8, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v8, v8, v0

    iput v6, v8, Lcom/android/server/display/WFDUibcManager$TouchPointer;->x:F

    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v8, v8, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v8, v8, v0

    iput v7, v8, Lcom/android/server/display/WFDUibcManager$TouchPointer;->y:F

    goto/16 :goto_54b

    :pswitch_2be
    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/display/WFDUibcManager;->access$700(Lcom/android/server/display/WFDUibcManager;)Landroid/content/Context;

    move-result-object v8

    const-string/jumbo v12, "window"

    invoke-virtual {v8, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/Display;->getRotation()I

    move-result v12

    # getter for: Lcom/android/server/display/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->access$500()Z

    move-result v13

    if-eqz v13, :cond_2f1

    const-string v13, "WFDUibcManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "UIBCMode is KDDISERVICE, Rotation(0/0, 1/90, 2/180, 3/270) : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f1
    if-nez v12, :cond_31c

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayWidth:F
    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1100(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    iget-object v13, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayWidth:F
    invoke-static {v13}, Lcom/android/server/display/WFDUibcManager;->access$1100(Lcom/android/server/display/WFDUibcManager;)F

    move-result v13

    iget-object v14, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v14, v14, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v14, v14, v0

    iget v14, v14, Lcom/android/server/display/WFDUibcManager$TouchPointer;->y:F

    mul-float/2addr v13, v14

    sub-float v6, v9, v13

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayHeight:F
    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1300(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    iget-object v13, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v13, v13, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v13, v13, v0

    iget v13, v13, Lcom/android/server/display/WFDUibcManager$TouchPointer;->x:F

    mul-float v7, v9, v13

    goto/16 :goto_399

    :cond_31c
    if-ne v12, v11, :cond_33f

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayWidth:F
    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1100(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    iget-object v13, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v13, v13, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v13, v13, v0

    iget v13, v13, Lcom/android/server/display/WFDUibcManager$TouchPointer;->x:F

    mul-float v6, v9, v13

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayHeight:F
    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1300(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    iget-object v13, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v13, v13, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v13, v13, v0

    iget v13, v13, Lcom/android/server/display/WFDUibcManager$TouchPointer;->y:F

    mul-float v7, v9, v13

    goto :goto_399

    :cond_33f
    if-ne v12, v10, :cond_369

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayWidth:F
    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1100(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    iget-object v13, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v13, v13, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v13, v13, v0

    iget v13, v13, Lcom/android/server/display/WFDUibcManager$TouchPointer;->y:F

    mul-float v6, v9, v13

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayHeight:F
    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1300(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    iget-object v13, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayHeight:F
    invoke-static {v13}, Lcom/android/server/display/WFDUibcManager;->access$1300(Lcom/android/server/display/WFDUibcManager;)F

    move-result v13

    iget-object v14, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v14, v14, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v14, v14, v0

    iget v14, v14, Lcom/android/server/display/WFDUibcManager$TouchPointer;->x:F

    mul-float/2addr v13, v14

    sub-float v7, v9, v13

    goto :goto_399

    :cond_369
    if-ne v12, v9, :cond_399

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayWidth:F
    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1100(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    iget-object v13, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayWidth:F
    invoke-static {v13}, Lcom/android/server/display/WFDUibcManager;->access$1100(Lcom/android/server/display/WFDUibcManager;)F

    move-result v13

    iget-object v14, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v14, v14, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v14, v14, v0

    iget v14, v14, Lcom/android/server/display/WFDUibcManager$TouchPointer;->x:F

    mul-float/2addr v13, v14

    sub-float v6, v9, v13

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayHeight:F
    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1300(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    iget-object v13, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayHeight:F
    invoke-static {v13}, Lcom/android/server/display/WFDUibcManager;->access$1300(Lcom/android/server/display/WFDUibcManager;)F

    move-result v13

    iget-object v14, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v14, v14, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v14, v14, v0

    iget v14, v14, Lcom/android/server/display/WFDUibcManager$TouchPointer;->y:F

    mul-float/2addr v13, v14

    sub-float v7, v9, v13

    :cond_399
    :goto_399
    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v9, v9, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v9, v9, v0

    iput v6, v9, Lcom/android/server/display/WFDUibcManager$TouchPointer;->x:F

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v9, v9, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v9, v9, v0

    iput v7, v9, Lcom/android/server/display/WFDUibcManager$TouchPointer;->y:F

    goto/16 :goto_54b

    :pswitch_3ab
    # getter for: Lcom/android/server/display/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->access$500()Z

    move-result v8

    if-eqz v8, :cond_3b8

    const-string v8, "WFDUibcManager"

    const-string v9, "UIBCMode is SIDESYNC/PRESENTATION"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b8
    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v8, v8, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v8, v8, v0

    iget v9, v8, Lcom/android/server/display/WFDUibcManager$TouchPointer;->x:F

    iget-object v12, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayWidth:F
    invoke-static {v12}, Lcom/android/server/display/WFDUibcManager;->access$1100(Lcom/android/server/display/WFDUibcManager;)F

    move-result v12

    mul-float/2addr v9, v12

    iput v9, v8, Lcom/android/server/display/WFDUibcManager$TouchPointer;->x:F

    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v8, v8, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v8, v8, v0

    iget v9, v8, Lcom/android/server/display/WFDUibcManager$TouchPointer;->y:F

    iget-object v12, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayHeight:F
    invoke-static {v12}, Lcom/android/server/display/WFDUibcManager;->access$1300(Lcom/android/server/display/WFDUibcManager;)F

    move-result v12

    mul-float/2addr v9, v12

    iput v9, v8, Lcom/android/server/display/WFDUibcManager$TouchPointer;->y:F

    goto/16 :goto_54b

    :pswitch_3dc
    # getter for: Lcom/android/server/display/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->access$500()Z

    move-result v8

    if-eqz v8, :cond_3e9

    const-string v8, "WFDUibcManager"

    const-string v9, "UIBCMode is DEFAULT"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e9
    iget v8, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v8, v10, :cond_4bf

    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayRatio:F
    invoke-static {v8}, Lcom/android/server/display/WFDUibcManager;->access$900(Lcom/android/server/display/WFDUibcManager;)F

    move-result v8

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mExternalDisplayRatio:F
    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1000(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_445

    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayWidth:F
    invoke-static {v8}, Lcom/android/server/display/WFDUibcManager;->access$1100(Lcom/android/server/display/WFDUibcManager;)F

    move-result v8

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mExternalDisplayHeight:F
    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1200(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    mul-float/2addr v8, v9

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayHeight:F
    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1300(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    div-float/2addr v8, v9

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mExternalDisplayWidth:F
    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1400(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    iget-object v13, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v13, v13, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v13, v13, v0

    iget v13, v13, Lcom/android/server/display/WFDUibcManager$TouchPointer;->x:F

    mul-float/2addr v9, v13

    iget-object v13, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mExternalDisplayWidth:F
    invoke-static {v13}, Lcom/android/server/display/WFDUibcManager;->access$1400(Lcom/android/server/display/WFDUibcManager;)F

    move-result v13

    sub-float/2addr v13, v8

    div-float/2addr v13, v12

    iget-object v12, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayWidth:F
    invoke-static {v12}, Lcom/android/server/display/WFDUibcManager;->access$1100(Lcom/android/server/display/WFDUibcManager;)F

    move-result v12

    sub-float v14, v9, v13

    div-float/2addr v14, v8

    mul-float v6, v12, v14

    iget-object v12, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayHeight:F
    invoke-static {v12}, Lcom/android/server/display/WFDUibcManager;->access$1300(Lcom/android/server/display/WFDUibcManager;)F

    move-result v12

    iget-object v14, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v14, v14, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v14, v14, v0

    iget v14, v14, Lcom/android/server/display/WFDUibcManager$TouchPointer;->y:F

    mul-float v7, v12, v14

    goto/16 :goto_53a

    :cond_445
    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayRatio:F
    invoke-static {v8}, Lcom/android/server/display/WFDUibcManager;->access$900(Lcom/android/server/display/WFDUibcManager;)F

    move-result v8

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mExternalDisplayRatio:F
    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1000(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_49d

    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayHeight:F
    invoke-static {v8}, Lcom/android/server/display/WFDUibcManager;->access$1300(Lcom/android/server/display/WFDUibcManager;)F

    move-result v8

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mExternalDisplayWidth:F
    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1400(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    mul-float/2addr v8, v9

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayWidth:F
    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1100(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    div-float/2addr v8, v9

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mExternalDisplayHeight:F
    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1200(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    iget-object v13, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v13, v13, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v13, v13, v0

    iget v13, v13, Lcom/android/server/display/WFDUibcManager$TouchPointer;->y:F

    mul-float/2addr v9, v13

    iget-object v13, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mExternalDisplayHeight:F
    invoke-static {v13}, Lcom/android/server/display/WFDUibcManager;->access$1200(Lcom/android/server/display/WFDUibcManager;)F

    move-result v13

    sub-float/2addr v13, v8

    div-float/2addr v13, v12

    iget-object v12, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayWidth:F
    invoke-static {v12}, Lcom/android/server/display/WFDUibcManager;->access$1100(Lcom/android/server/display/WFDUibcManager;)F

    move-result v12

    iget-object v14, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v14, v14, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v14, v14, v0

    iget v14, v14, Lcom/android/server/display/WFDUibcManager$TouchPointer;->x:F

    mul-float v6, v12, v14

    iget-object v12, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayHeight:F
    invoke-static {v12}, Lcom/android/server/display/WFDUibcManager;->access$1300(Lcom/android/server/display/WFDUibcManager;)F

    move-result v12

    sub-float v14, v9, v13

    div-float/2addr v14, v8

    mul-float v7, v12, v14

    goto/16 :goto_53a

    :cond_49d
    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayWidth:F
    invoke-static {v8}, Lcom/android/server/display/WFDUibcManager;->access$1100(Lcom/android/server/display/WFDUibcManager;)F

    move-result v8

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v9, v9, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v9, v9, v0

    iget v9, v9, Lcom/android/server/display/WFDUibcManager$TouchPointer;->x:F

    mul-float v6, v8, v9

    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayHeight:F
    invoke-static {v8}, Lcom/android/server/display/WFDUibcManager;->access$1300(Lcom/android/server/display/WFDUibcManager;)F

    move-result v8

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v9, v9, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v9, v9, v0

    iget v9, v9, Lcom/android/server/display/WFDUibcManager$TouchPointer;->y:F

    mul-float v7, v8, v9

    goto/16 :goto_53a

    :cond_4bf
    iget v8, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v8, v11, :cond_53a

    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayRatio:F
    invoke-static {v8}, Lcom/android/server/display/WFDUibcManager;->access$900(Lcom/android/server/display/WFDUibcManager;)F

    move-result v8

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mExternalDisplayRatio:F
    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1000(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_51a

    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayWidth:F
    invoke-static {v8}, Lcom/android/server/display/WFDUibcManager;->access$1100(Lcom/android/server/display/WFDUibcManager;)F

    move-result v8

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mExternalDisplayHeight:F
    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1200(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    mul-float/2addr v8, v9

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayHeight:F
    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1300(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    div-float/2addr v8, v9

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mExternalDisplayWidth:F
    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1400(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    iget-object v13, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v13, v13, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v13, v13, v0

    iget v13, v13, Lcom/android/server/display/WFDUibcManager$TouchPointer;->x:F

    mul-float/2addr v9, v13

    iget-object v13, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mExternalDisplayWidth:F
    invoke-static {v13}, Lcom/android/server/display/WFDUibcManager;->access$1400(Lcom/android/server/display/WFDUibcManager;)F

    move-result v13

    sub-float/2addr v13, v8

    div-float/2addr v13, v12

    iget-object v12, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayWidth:F
    invoke-static {v12}, Lcom/android/server/display/WFDUibcManager;->access$1100(Lcom/android/server/display/WFDUibcManager;)F

    move-result v12

    sub-float v14, v9, v13

    mul-float/2addr v12, v14

    div-float v6, v12, v8

    iget-object v12, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayHeight:F
    invoke-static {v12}, Lcom/android/server/display/WFDUibcManager;->access$1300(Lcom/android/server/display/WFDUibcManager;)F

    move-result v12

    iget-object v14, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v14, v14, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v14, v14, v0

    iget v14, v14, Lcom/android/server/display/WFDUibcManager$TouchPointer;->y:F

    mul-float v7, v12, v14

    goto :goto_53a

    :cond_51a
    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayWidth:F
    invoke-static {v8}, Lcom/android/server/display/WFDUibcManager;->access$1100(Lcom/android/server/display/WFDUibcManager;)F

    move-result v8

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v9, v9, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v9, v9, v0

    iget v9, v9, Lcom/android/server/display/WFDUibcManager$TouchPointer;->x:F

    mul-float v6, v8, v9

    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayHeight:F
    invoke-static {v8}, Lcom/android/server/display/WFDUibcManager;->access$1300(Lcom/android/server/display/WFDUibcManager;)F

    move-result v8

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v9, v9, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v9, v9, v0

    iget v9, v9, Lcom/android/server/display/WFDUibcManager$TouchPointer;->y:F

    mul-float v7, v8, v9

    :cond_53a
    :goto_53a
    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v8, v8, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v8, v8, v0

    iput v6, v8, Lcom/android/server/display/WFDUibcManager$TouchPointer;->x:F

    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v8, v8, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v8, v8, v0

    iput v7, v8, Lcom/android/server/display/WFDUibcManager$TouchPointer;->y:F

    nop

    :goto_54b
    # getter for: Lcom/android/server/display/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->access$500()Z

    move-result v8

    if-eqz v8, :cond_58f

    const-string v8, "WFDUibcManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Output Pointer ID : "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v12, v12, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v12, v12, v0

    iget v12, v12, Lcom/android/server/display/WFDUibcManager$TouchPointer;->id:I

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", x: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v12, v12, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v12, v12, v0

    iget v12, v12, Lcom/android/server/display/WFDUibcManager$TouchPointer;->x:F

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v12, ", y: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v12, v12, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v12, v12, v0

    iget v12, v12, Lcom/android/server/display/WFDUibcManager$TouchPointer;->y:F

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_58f
    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mSinkUIBCVersion:I
    invoke-static {v8}, Lcom/android/server/display/WFDUibcManager;->access$1500(Lcom/android/server/display/WFDUibcManager;)I

    move-result v8

    if-lez v8, :cond_694

    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v8, v8, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v8, v8, v0

    iget v8, v8, Lcom/android/server/display/WFDUibcManager$TouchPointer;->x:F

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-ltz v8, :cond_646

    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v8, v8, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v8, v8, v0

    iget v8, v8, Lcom/android/server/display/WFDUibcManager$TouchPointer;->x:F

    iget-object v12, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayWidth:F
    invoke-static {v12}, Lcom/android/server/display/WFDUibcManager;->access$1100(Lcom/android/server/display/WFDUibcManager;)F

    move-result v12

    cmpl-float v8, v8, v12

    if-gtz v8, :cond_646

    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v8, v8, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v8, v8, v0

    iget v8, v8, Lcom/android/server/display/WFDUibcManager$TouchPointer;->y:F

    cmpg-float v8, v8, v9

    if-ltz v8, :cond_646

    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v8, v8, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v8, v8, v0

    iget v8, v8, Lcom/android/server/display/WFDUibcManager$TouchPointer;->y:F

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayHeight:F
    invoke-static {v9}, Lcom/android/server/display/WFDUibcManager;->access$1300(Lcom/android/server/display/WFDUibcManager;)F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_5d5

    goto :goto_646

    :cond_5d5
    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget v8, v8, Lcom/android/server/display/WFDUibcManager$TouchInput;->action:I

    if-ne v8, v10, :cond_601

    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchPointerTable:Ljava/util/TreeMap;

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v9, v9, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v9, v9, v0

    iget v9, v9, Lcom/android/server/display/WFDUibcManager$TouchPointer;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_601

    const-string v8, "WFDUibcManager"

    const-string v9, "In Range, Change to ACTION_DOWN"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v8, v8, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v8, v8, v0

    iget v5, v8, Lcom/android/server/display/WFDUibcManager$TouchPointer;->id:I

    goto/16 :goto_694

    :cond_601
    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget v8, v8, Lcom/android/server/display/WFDUibcManager$TouchInput;->action:I

    if-nez v8, :cond_624

    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchPointerTable:Ljava/util/TreeMap;

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v9, v9, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v9, v9, v0

    iget v9, v9, Lcom/android/server/display/WFDUibcManager$TouchPointer;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_624

    const-string v8, "WFDUibcManager"

    const-string v9, "Skip ACTION_DOWN, Change to ACTION_MOVE"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x2

    goto :goto_694

    :cond_624
    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget v8, v8, Lcom/android/server/display/WFDUibcManager$TouchInput;->action:I

    if-ne v8, v11, :cond_694

    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchPointerTable:Ljava/util/TreeMap;

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v9, v9, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v9, v9, v0

    iget v9, v9, Lcom/android/server/display/WFDUibcManager$TouchPointer;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_694

    const-string v4, "WFDUibcManager"

    const-string v8, "Skip ACTION_UP"

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_646
    :goto_646
    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget v8, v8, Lcom/android/server/display/WFDUibcManager$TouchInput;->action:I

    if-eq v8, v11, :cond_672

    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchPointerTable:Ljava/util/TreeMap;

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v9, v9, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v9, v9, v0

    iget v9, v9, Lcom/android/server/display/WFDUibcManager$TouchPointer;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_672

    const-string v8, "WFDUibcManager"

    const-string v9, "Out of Range, Change to ACTION_UP"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v8, v8, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v8, v8, v0

    iget v5, v8, Lcom/android/server/display/WFDUibcManager$TouchPointer;->id:I

    goto/16 :goto_6f5

    :cond_672
    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget v8, v8, Lcom/android/server/display/WFDUibcManager$TouchInput;->action:I

    if-eq v8, v10, :cond_6f5

    iget-object v8, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchPointerTable:Ljava/util/TreeMap;

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v9, v9, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v9, v9, v0

    iget v9, v9, Lcom/android/server/display/WFDUibcManager$TouchPointer;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6f5

    const-string v4, "WFDUibcManager"

    const-string v8, "Out of Range, Skip Event"

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_694
    :goto_694
    new-instance v8, Lcom/android/server/display/WFDUibcManager$TouchPointer;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/android/server/display/WFDUibcManager$TouchPointer;-><init>(Lcom/android/server/display/WFDUibcManager$1;)V

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v9, v9, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v9, v9, v0

    iget v9, v9, Lcom/android/server/display/WFDUibcManager$TouchPointer;->id:I

    iput v9, v8, Lcom/android/server/display/WFDUibcManager$TouchPointer;->id:I

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v9, v9, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v9, v9, v0

    iget v9, v9, Lcom/android/server/display/WFDUibcManager$TouchPointer;->x:F

    iput v9, v8, Lcom/android/server/display/WFDUibcManager$TouchPointer;->x:F

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    iget-object v9, v9, Lcom/android/server/display/WFDUibcManager$TouchInput;->pointer:[Lcom/android/server/display/WFDUibcManager$TouchPointer;

    aget-object v9, v9, v0

    iget v9, v9, Lcom/android/server/display/WFDUibcManager$TouchPointer;->y:F

    iput v9, v8, Lcom/android/server/display/WFDUibcManager$TouchPointer;->y:F

    # getter for: Lcom/android/server/display/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->access$500()Z

    move-result v9

    if-eqz v9, :cond_6ea

    const-string v9, "WFDUibcManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Put Pointer ID : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v8, Lcom/android/server/display/WFDUibcManager$TouchPointer;->id:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", X : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v8, Lcom/android/server/display/WFDUibcManager$TouchPointer;->x:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, ", Y : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v8, Lcom/android/server/display/WFDUibcManager$TouchPointer;->y:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6ea
    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchPointerTable:Ljava/util/TreeMap;

    iget v10, v8, Lcom/android/server/display/WFDUibcManager$TouchPointer;->id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6f5
    :goto_6f5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_106

    :cond_6f9
    iget-object v0, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-nez v0, :cond_70f

    # getter for: Lcom/android/server/display/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_70e

    const-string v0, "WFDUibcManager"

    const-string v4, "Not available PointerTable"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_70e
    return-void

    :cond_70f
    iget-object v0, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    new-array v0, v0, [Landroid/view/MotionEvent$PointerProperties;

    iput-object v0, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    iget-object v0, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    new-array v0, v0, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v0, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    iget-object v0, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v0, v4

    :goto_72e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const/4 v13, 0x5

    if-eqz v12, :cond_7d2

    iget-object v12, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v15, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v15}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v15, v12, v0

    iget-object v12, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v15, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v15}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v15, v12, v0

    iget-object v12, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v12, v12, v0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    iput v15, v12, Landroid/view/MotionEvent$PointerProperties;->id:I

    iget-object v12, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v12, v12, v0

    iget v12, v12, Landroid/view/MotionEvent$PointerProperties;->id:I

    if-ne v12, v5, :cond_760

    move v5, v0

    :cond_760
    iget-object v12, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v12, v12, v0

    iput v11, v12, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    iget-object v12, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchPointerTable:Ljava/util/TreeMap;

    iget-object v15, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v15, v15, v0

    iget v15, v15, Landroid/view/MotionEvent$PointerProperties;->id:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/display/WFDUibcManager$TouchPointer;

    iget-object v15, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v15, v15, v0

    iget v14, v12, Lcom/android/server/display/WFDUibcManager$TouchPointer;->x:F

    invoke-virtual {v15, v4, v14}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    iget-object v14, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v14, v14, v0

    iget v15, v12, Lcom/android/server/display/WFDUibcManager$TouchPointer;->y:F

    invoke-virtual {v14, v11, v15}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    iget-object v14, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v14, v14, v0

    const/high16 v15, 0x3fc00000    # 1.5f

    const/16 v4, 0x8

    invoke-virtual {v14, v4, v15}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    iget-object v4, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v0

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v4, v10, v14}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    iget-object v4, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v0

    const v14, 0x3d23d70a    # 0.04f

    invoke-virtual {v4, v9, v14}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    iget-object v4, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v0

    const/4 v14, 0x4

    const/high16 v15, 0x41700000    # 15.0f

    invoke-virtual {v4, v14, v15}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    iget-object v4, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v0

    const/high16 v14, 0x41000000    # 8.0f

    invoke-virtual {v4, v13, v14}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    iget-object v4, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v0

    const/high16 v13, 0x41300000    # 11.0f

    const/4 v14, 0x6

    invoke-virtual {v4, v14, v13}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    iget-object v4, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v0

    const/4 v14, 0x7

    invoke-virtual {v4, v14, v13}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    add-int/lit8 v0, v0, 0x1

    const/4 v4, 0x0

    goto/16 :goto_72e

    :cond_7d2
    packed-switch v3, :pswitch_data_9e2

    :pswitch_7d5
    const-string v0, "WFDUibcManager"

    const-string v4, "Not available action"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_7dd
    goto :goto_852

    :pswitch_7de
    iget-object v0, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-le v0, v11, :cond_852

    iget-object v0, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-lt v5, v0, :cond_813

    const-string v0, "WFDUibcManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Not available index, length = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v9}, Ljava/util/TreeMap;->size()I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", index = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_813
    shl-int/lit8 v0, v5, 0x8

    const/4 v4, 0x6

    or-int v3, v4, v0

    goto :goto_852

    :pswitch_819
    iget-object v0, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-le v0, v11, :cond_852

    iget-object v0, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-lt v5, v0, :cond_84e

    const-string v0, "WFDUibcManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Not available index, length = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v9}, Ljava/util/TreeMap;->size()I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", index = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_84e
    shl-int/lit8 v0, v5, 0x8

    or-int v3, v13, v0

    :cond_852
    :goto_852
    # getter for: Lcom/android/server/display/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_8b2

    const-string v0, "WFDUibcManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Pointer Table, Action : "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_86f
    iget-object v4, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->size()I

    move-result v4

    if-ge v0, v4, :cond_8b2

    const-string v4, "WFDUibcManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ID : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v10, v10, v0

    iget v10, v10, Landroid/view/MotionEvent$PointerProperties;->id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", X : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v10, v10, v0

    iget v10, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, ", Y : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v10, v10, v0

    iget v10, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_86f

    :cond_8b2
    const-wide/16 v9, 0x0

    if-nez v3, :cond_8ba

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    :cond_8ba
    nop

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v19

    iget-object v0, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v22

    iget-object v0, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    iget-object v4, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/16 v25, 0x0

    const/16 v26, 0x0

    iget-object v12, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mExternalDisplayID:I
    invoke-static {v12}, Lcom/android/server/display/WFDUibcManager;->access$600(Lcom/android/server/display/WFDUibcManager;)I

    move-result v27

    const/high16 v28, 0x3f800000    # 1.0f

    const/high16 v29, 0x3f800000    # 1.0f

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x1002

    const/high16 v33, 0x8000000

    move-wide/from16 v17, v9

    move/from16 v21, v3

    move-object/from16 v23, v0

    move-object/from16 v24, v4

    invoke-static/range {v17 .. v33}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIIFFIIII)Landroid/view/MotionEvent;

    move-result-object v4

    # getter for: Lcom/android/server/display/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_907

    const-string v0, "WFDUibcManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "InjectTouchEvent: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_907
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v12, 0x0

    invoke-virtual {v0, v4, v12}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    and-int/lit16 v0, v3, 0xff

    if-eq v0, v11, :cond_918

    and-int/lit16 v0, v3, 0xff

    const/4 v11, 0x6

    if-ne v0, v11, :cond_953

    :cond_918
    # getter for: Lcom/android/server/display/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_944

    const-string v0, "WFDUibcManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Remove Pointer, Action : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 v12, v3, 0xff

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", Index : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v12, v12, v5

    iget v12, v12, Landroid/view/MotionEvent$PointerProperties;->id:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_944
    iget-object v0, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchPointerTable:Ljava/util/TreeMap;

    iget-object v11, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v11, v11, v5

    iget v11, v11, Landroid/view/MotionEvent$PointerProperties;->id:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_953
    iget-object v0, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mUIBCMode:Lcom/android/server/display/WFDUibcManager$UIBCMode;
    invoke-static {v0}, Lcom/android/server/display/WFDUibcManager;->access$800(Lcom/android/server/display/WFDUibcManager;)Lcom/android/server/display/WFDUibcManager$UIBCMode;

    move-result-object v0

    sget-object v11, Lcom/android/server/display/WFDUibcManager$UIBCMode;->SIDESYNC:Lcom/android/server/display/WFDUibcManager$UIBCMode;

    if-eq v0, v11, :cond_9d2

    iget-object v0, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mIsPresentationMode:Z
    invoke-static {v0}, Lcom/android/server/display/WFDUibcManager;->access$100(Lcom/android/server/display/WFDUibcManager;)Z

    move-result v0

    if-nez v0, :cond_9d2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    # getter for: Lcom/android/server/display/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_989

    const-string v0, "WFDUibcManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "TimeGap: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mLastBroadcastTime:J

    sub-long v14, v11, v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_989
    iget-wide v13, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mLastBroadcastTime:J

    sub-long v13, v11, v13

    const-wide/16 v15, 0x3e8

    cmp-long v0, v13, v15

    if-lez v0, :cond_9d2

    # getter for: Lcom/android/server/display/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/WFDUibcManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_9a0

    const-string v0, "WFDUibcManager"

    const-string v13, "Send intent (com.samsung.intent.action.SEC_UIBC_GET_FOCUS)"

    invoke-static {v0, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9a0
    :try_start_9a0
    new-instance v0, Landroid/content/Intent;

    const-string v13, "com.samsung.intent.action.SEC_UIBC_GET_FOCUS"

    invoke-direct {v0, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v13, "UIBC_X"

    float-to-int v14, v6

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v13, "UIBC_Y"

    float-to-int v14, v7

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v13, "DISPLAY_ID"

    iget-object v14, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mExternalDisplayID:I
    invoke-static {v14}, Lcom/android/server/display/WFDUibcManager;->access$600(Lcom/android/server/display/WFDUibcManager;)I

    move-result v14

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v13, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->this$0:Lcom/android/server/display/WFDUibcManager;

    # getter for: Lcom/android/server/display/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/server/display/WFDUibcManager;->access$700(Lcom/android/server/display/WFDUibcManager;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_9c7
    .catch Ljava/lang/Exception; {:try_start_9a0 .. :try_end_9c7} :catch_9c8

    goto :goto_9d0

    :catch_9c8
    move-exception v0

    const-string v13, "WFDUibcManager"

    const-string v14, "Exception sendBroadcast(com.samsung.intent.action.SEC_UIBC_GET_FOCUS): "

    invoke-static {v13, v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9d0
    iput-wide v11, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mLastBroadcastTime:J

    :cond_9d2
    return-void

    nop

    :pswitch_data_9d4
    .packed-switch 0x1
        :pswitch_3dc
        :pswitch_3ab
        :pswitch_3ab
        :pswitch_2be
        :pswitch_181
    .end packed-switch

    :pswitch_data_9e2
    .packed-switch 0x0
        :pswitch_819
        :pswitch_7de
        :pswitch_7dd
        :pswitch_7d5
        :pswitch_7d5
        :pswitch_819
        :pswitch_7de
    .end packed-switch
.end method


# virtual methods
.method public run()V
    .registers 2

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->isRunning:Z

    if-eqz v0, :cond_4a

    invoke-virtual {p0}, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->getTouchEvent()Lcom/android/server/display/WFDUibcManager$TouchInput;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    invoke-virtual {p0}, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->getKeyEvent()Lcom/android/server/display/WFDUibcManager$KeyInput;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyInput:Lcom/android/server/display/WFDUibcManager$KeyInput;

    invoke-virtual {p0}, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->getScrollEvent()Lcom/android/server/display/WFDUibcManager$ScrollInput;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mScrollInput:Lcom/android/server/display/WFDUibcManager$ScrollInput;

    invoke-virtual {p0}, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->getRotateEvent()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mRotationInput:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyInput:Lcom/android/server/display/WFDUibcManager$KeyInput;

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mScrollInput:Lcom/android/server/display/WFDUibcManager$ScrollInput;

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mRotationInput:Ljava/lang/Integer;

    if-nez v0, :cond_2d

    goto :goto_0

    :cond_2d
    iget-object v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mTouchInput:Lcom/android/server/display/WFDUibcManager$TouchInput;

    if-eqz v0, :cond_34

    invoke-direct {p0}, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->handleTouchEvent()V

    :cond_34
    iget-object v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mKeyInput:Lcom/android/server/display/WFDUibcManager$KeyInput;

    if-eqz v0, :cond_3b

    invoke-direct {p0}, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->handleKeyEvent()V

    :cond_3b
    iget-object v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mScrollInput:Lcom/android/server/display/WFDUibcManager$ScrollInput;

    if-eqz v0, :cond_42

    invoke-direct {p0}, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->handleScrollEvent()V

    :cond_42
    iget-object v0, p0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->mRotationInput:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->handleRotationEvent()V

    goto :goto_0

    :cond_4a
    return-void
.end method
