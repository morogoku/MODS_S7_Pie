.class Lcom/android/server/am/TaskLaunchParamsModifier$DexCompatLaunchParamsModifier;
.super Ljava/lang/Object;
.source "TaskLaunchParamsModifier.java"

# interfaces
.implements Lcom/android/server/am/LaunchParamsController$LaunchParamsModifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/TaskLaunchParamsModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DexCompatLaunchParamsModifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/TaskLaunchParamsModifier;


# direct methods
.method constructor <init>(Lcom/android/server/am/TaskLaunchParamsModifier;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/TaskLaunchParamsModifier$DexCompatLaunchParamsModifier;->this$0:Lcom/android/server/am/TaskLaunchParamsModifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCalculate(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/LaunchParamsController$LaunchParams;Lcom/android/server/am/LaunchParamsController$LaunchParams;)I
    .registers 10

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_b

    :cond_a
    return v0

    :cond_b
    :goto_b
    return v0
.end method
