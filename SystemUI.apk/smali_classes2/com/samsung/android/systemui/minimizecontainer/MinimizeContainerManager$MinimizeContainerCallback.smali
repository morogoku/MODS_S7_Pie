.class interface abstract Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$MinimizeContainerCallback;
.super Ljava/lang/Object;
.source "MinimizeContainerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "MinimizeContainerCallback"
.end annotation


# virtual methods
.method public abstract onFlipFolderStateChanged()V
.end method

.method public abstract onItemAdded(Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;)V
.end method

.method public abstract onItemRemoved(Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;)V
.end method

.method public abstract onRotationChanged(IILandroid/graphics/Rect;)V
.end method

.method public abstract onWindowRemoved()V
.end method
