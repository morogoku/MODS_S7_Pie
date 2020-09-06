.class public Lcom/android/systemui/dnd/StackVisibility;
.super Ljava/lang/Object;
.source "StackVisibility.java"


# instance fields
.field isSidePrimaryVisible:Z

.field isSideRecentsVisible:Z

.field isSideSecondaryVisible:Z

.field isSplitPrimaryVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSidescreenOpen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/dnd/StackVisibility;->isSidePrimaryVisible:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/dnd/StackVisibility;->isSideRecentsVisible:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isSplit()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/dnd/StackVisibility;->isSplitPrimaryVisible:Z

    return v0
.end method

.method public isThreeUp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/dnd/StackVisibility;->isSideSecondaryVisible:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/dnd/StackVisibility;->isSidePrimaryVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/dnd/StackVisibility;->isSideRecentsVisible:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isTwoUp()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/dnd/StackVisibility;->isSidescreenOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/dnd/StackVisibility;->isThreeUp()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public set(ZZZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/dnd/StackVisibility;->isSplitPrimaryVisible:Z

    iput-boolean p2, p0, Lcom/android/systemui/dnd/StackVisibility;->isSidePrimaryVisible:Z

    iput-boolean p3, p0, Lcom/android/systemui/dnd/StackVisibility;->isSideSecondaryVisible:Z

    iput-boolean p4, p0, Lcom/android/systemui/dnd/StackVisibility;->isSideRecentsVisible:Z

    return-void
.end method
