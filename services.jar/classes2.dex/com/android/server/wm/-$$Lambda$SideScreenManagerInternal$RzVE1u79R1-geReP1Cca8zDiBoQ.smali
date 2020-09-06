.class public final synthetic Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$RzVE1u79R1-geReP1Cca8zDiBoQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/SideScreenManagerInternal;

.field private final synthetic f$1:Lcom/android/server/wm/TaskStack;

.field private final synthetic f$2:Landroid/graphics/Rect;

.field private final synthetic f$3:Z

.field private final synthetic f$4:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/SideScreenManagerInternal;Lcom/android/server/wm/TaskStack;Landroid/graphics/Rect;ZLjava/lang/Runnable;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$RzVE1u79R1-geReP1Cca8zDiBoQ;->f$0:Lcom/android/server/wm/SideScreenManagerInternal;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$RzVE1u79R1-geReP1Cca8zDiBoQ;->f$1:Lcom/android/server/wm/TaskStack;

    iput-object p3, p0, Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$RzVE1u79R1-geReP1Cca8zDiBoQ;->f$2:Landroid/graphics/Rect;

    iput-boolean p4, p0, Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$RzVE1u79R1-geReP1Cca8zDiBoQ;->f$3:Z

    iput-object p5, p0, Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$RzVE1u79R1-geReP1Cca8zDiBoQ;->f$4:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$RzVE1u79R1-geReP1Cca8zDiBoQ;->f$0:Lcom/android/server/wm/SideScreenManagerInternal;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$RzVE1u79R1-geReP1Cca8zDiBoQ;->f$1:Lcom/android/server/wm/TaskStack;

    iget-object v2, p0, Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$RzVE1u79R1-geReP1Cca8zDiBoQ;->f$2:Landroid/graphics/Rect;

    iget-boolean v3, p0, Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$RzVE1u79R1-geReP1Cca8zDiBoQ;->f$3:Z

    iget-object v4, p0, Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$RzVE1u79R1-geReP1Cca8zDiBoQ;->f$4:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/wm/SideScreenManagerInternal;->lambda$animateScaleStack$2(Lcom/android/server/wm/SideScreenManagerInternal;Lcom/android/server/wm/TaskStack;Landroid/graphics/Rect;ZLjava/lang/Runnable;)V

    return-void
.end method
