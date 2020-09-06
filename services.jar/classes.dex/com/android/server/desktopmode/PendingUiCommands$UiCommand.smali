.class Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;
.super Ljava/lang/Object;
.source "PendingUiCommands.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/PendingUiCommands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UiCommand"
.end annotation


# instance fields
.field mCommand:Ljava/lang/Runnable;

.field mRemoveNotification:Z

.field mType:I

.field mWhere:I


# direct methods
.method public constructor <init>(IILjava/lang/Runnable;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;-><init>(IILjava/lang/Runnable;Z)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/Runnable;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mType:I

    iput p2, p0, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mWhere:I

    iput-object p3, p0, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mCommand:Ljava/lang/Runnable;

    iput-boolean p4, p0, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mRemoveNotification:Z

    return-void
.end method


# virtual methods
.method public equals(IIZ)Z
    .registers 5

    iget v0, p0, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mType:I

    if-ne v0, p1, :cond_11

    const/4 v0, -0x1

    if-eq v0, p2, :cond_b

    iget v0, p0, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mWhere:I

    if-ne v0, p2, :cond_11

    :cond_b
    iget-boolean v0, p0, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mRemoveNotification:Z

    if-ne v0, p3, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public equals(Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;)Z
    .registers 5

    iget v0, p1, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mType:I

    iget v1, p1, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mWhere:I

    iget-boolean v2, p1, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mRemoveNotification:Z

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->equals(IIZ)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_1a

    if-eqz p1, :cond_18

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_18

    move-object v0, p1

    check-cast v0, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->equals(Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_1a

    :cond_18
    const/4 v0, 0x0

    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 v0, 0x1

    :goto_1b
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UiCommand("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mType:I

    invoke-static {v1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mWhere="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mWhere:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mRemoveNotification:Z

    if-eqz v1, :cond_24

    const-string v1, ", mRemoveNotification)"

    goto :goto_2a

    :cond_24
    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    :goto_2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
