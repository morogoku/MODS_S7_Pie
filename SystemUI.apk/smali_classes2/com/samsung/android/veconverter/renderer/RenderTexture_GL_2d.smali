.class public Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;
.super Ljava/lang/Object;
.source "RenderTexture_GL_2d.java"


# instance fields
.field private mProgram:I

.field private mTextureId:I

.field private final mVerticesData:[F

.field private mVerticesFloatBuffer:Ljava/nio/FloatBuffer;

.field private ma_PositionHandle:I

.field private ma_TextureCoordinatesHandle:I

.field private mu_MatrixHandle:I

.field private mu_TextureUnitHandle:I

.field private final projectionMatrix:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->mVerticesData:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->projectionMatrix:[F

    iget-object v0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->mVerticesData:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->mVerticesData:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->mVerticesFloatBuffer:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->mVerticesFloatBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private deleteTexture()V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v1, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->mTextureId:I

    invoke-static {v1}, Lcom/samsung/android/veconverter/util/OpenGlHelper;->deleteTexture(I)V

    iput v0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->mTextureId:I

    return-void
.end method


# virtual methods
.method public draw()V
    .locals 9

    iget v0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->mu_MatrixHandle:I

    iget-object v1, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->projectionMatrix:[F

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v3, v2, v1, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget v0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->mTextureId:I

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->mu_TextureUnitHandle:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget-object v0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->mVerticesFloatBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v3, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->ma_PositionHandle:I

    iget-object v8, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->mVerticesFloatBuffer:Ljava/nio/FloatBuffer;

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0x10

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->ma_PositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string v0, "glEnableVertexAttribArray ma_PositionHandle"

    invoke-static {v0}, Lcom/samsung/android/veconverter/util/OpenGlHelper;->checkGLError(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->mVerticesFloatBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v3, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->ma_TextureCoordinatesHandle:I

    iget-object v8, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->mVerticesFloatBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->ma_TextureCoordinatesHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string v0, "glEnableVertexAttribArray ma_TextureCoordinatesHandle"

    invoke-static {v0}, Lcom/samsung/android/veconverter/util/OpenGlHelper;->checkGLError(Ljava/lang/String;)I

    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const-string v0, "VEConverter"

    const-string v1, "Calling glFinish blocking call"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    const-string v0, "VEConverter"

    const-string v1, "Finished glFinish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public loadTexture(Landroid/graphics/Bitmap;II)I
    .locals 8

    iget v0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->mTextureId:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->deleteTexture()V

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {p1}, Lcom/samsung/android/veconverter/util/OpenGlHelper;->loadTexture(Landroid/graphics/Bitmap;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->mTextureId:I

    iget v2, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->mTextureId:I

    if-nez v2, :cond_1

    const-string v2, "VEConverter"

    const-string v3, "not able to load new texture"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, p2

    div-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, p3

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v6, v2, v3

    if-ltz v6, :cond_2

    div-float v5, v3, v2

    goto :goto_0

    :cond_2
    div-float v4, v2, v3

    :goto_0
    iget-object v6, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->projectionMatrix:[F

    invoke-static {v6, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v6, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->projectionMatrix:[F

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v6, v1, v4, v5, v7}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    iget v1, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->mTextureId:I

    return v1
.end method

.method public prepare()I
    .locals 2

    const-string v0, "uniform mat4 u_Matrix;\nattribute vec4 a_Position;\nattribute vec2 a_TextureCoordinates;\nvarying vec2 v_TextureCoordinates;\nvoid main(){\nv_TextureCoordinates = a_TextureCoordinates;\ngl_Position =u_Matrix*a_Position;\n}\n"

    const-string v1, "precision mediump float;\nuniform sampler2D u_TextureUnit;\nvarying vec2 v_TextureCoordinates;\nvoid main(){ \ngl_FragColor = texture2D(u_TextureUnit, v_TextureCoordinates);\n}\n"

    invoke-static {v0, v1}, Lcom/samsung/android/veconverter/util/OpenGlHelper;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->mProgram:I

    iget v0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->mProgram:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->mProgram:I

    const-string v1, "u_Matrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->mu_MatrixHandle:I

    iget v0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->mProgram:I

    const-string v1, "a_Position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->ma_PositionHandle:I

    iget v0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->mProgram:I

    const-string v1, "a_TextureCoordinates"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->ma_TextureCoordinatesHandle:I

    iget v0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->mProgram:I

    const-string v1, "u_TextureUnit"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->mu_TextureUnitHandle:I

    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/4 v0, 0x1

    return v0
.end method

.method public release()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->deleteTexture()V

    iget v0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->mProgram:I

    iput v0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->mu_MatrixHandle:I

    iput v0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->ma_PositionHandle:I

    iput v0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->ma_TextureCoordinatesHandle:I

    iput v0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->mu_TextureUnitHandle:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->mVerticesFloatBuffer:Ljava/nio/FloatBuffer;

    return-void
.end method
