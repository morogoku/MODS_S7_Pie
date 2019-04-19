.class public final synthetic Lcom/android/server/am/-$$Lambda$SideScreenManagerService$M55k4b4FBjut8-1IeubfU8IuOqU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/am/SideScreenManagerService;

.field private final synthetic f$1:Landroid/graphics/Rect;

.field private final synthetic f$2:Landroid/graphics/Rect;

.field private final synthetic f$3:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/SideScreenManagerService;Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$M55k4b4FBjut8-1IeubfU8IuOqU;->f$0:Lcom/android/server/am/SideScreenManagerService;

    iput-object p2, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$M55k4b4FBjut8-1IeubfU8IuOqU;->f$1:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$M55k4b4FBjut8-1IeubfU8IuOqU;->f$2:Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$M55k4b4FBjut8-1IeubfU8IuOqU;->f$3:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$M55k4b4FBjut8-1IeubfU8IuOqU;->f$0:Lcom/android/server/am/SideScreenManagerService;

    iget-object v1, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$M55k4b4FBjut8-1IeubfU8IuOqU;->f$1:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$M55k4b4FBjut8-1IeubfU8IuOqU;->f$2:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$M55k4b4FBjut8-1IeubfU8IuOqU;->f$3:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/am/SideScreenManagerService;->lambda$showSideScreen$1(Lcom/android/server/am/SideScreenManagerService;Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)V

    return-void
.end method
