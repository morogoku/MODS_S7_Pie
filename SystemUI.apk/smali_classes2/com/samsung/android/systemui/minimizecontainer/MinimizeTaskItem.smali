.class public Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;
.super Ljava/lang/Object;
.source "MinimizeTaskItem.java"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public bounds:Landroid/graphics/Rect;

.field private mAnimationCompleted:Z

.field private mAppIcon:Landroid/graphics/drawable/Drawable;

.field private mAppLabel:Ljava/lang/String;

.field private mTaskInfoLoadCompleted:Z

.field public realActivity:Landroid/content/ComponentName;

.field public taskId:I

.field public userId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/graphics/Rect;ILandroid/content/ComponentName;IZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;->mAnimationCompleted:Z

    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;->mTaskInfoLoadCompleted:Z

    iput p2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;->taskId:I

    iput-object p3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;->realActivity:Landroid/content/ComponentName;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;->bounds:Landroid/graphics/Rect;

    iput p4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;->userId:I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_0
    iput-boolean p5, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;->mAnimationCompleted:Z

    iput-boolean p6, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;->mTaskInfoLoadCompleted:Z

    return-void
.end method


# virtual methods
.method animationCompleted()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;->mAnimationCompleted:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MinimizeContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MinimizeTaskItem] animationCompleted: taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;->taskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;->mAnimationCompleted:Z

    :cond_1
    return-void
.end method

.method getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;->mAppIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getAppLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;->mAppLabel:Ljava/lang/String;

    return-object v0
.end method

.method readyToAddItem()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;->mAnimationCompleted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;->mTaskInfoLoadCompleted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method setAppIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;->mAppIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method setAppLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;->mAppLabel:Ljava/lang/String;

    return-void
.end method

.method taskInfoLoadCompleted()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;->mTaskInfoLoadCompleted:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MinimizeContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MinimizeTaskItem] taskInfoLoadCompleted: taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;->taskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;->mTaskInfoLoadCompleted:Z

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MinimizeTaskItem {taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;->taskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MinimizeTaskItem {taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;->taskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
