function package(tbname,basedir,outdir)
arguments
    tbname (1,1) string = "chebfun"
    basedir (1,1) string {mustBeFolder} = fileparts(mfilename("fullpath"));
    outdir (1,1) string {mustBeFolder} = fileparts(mfilename("fullpath"));
end

uuid = string(java.util.UUID.randomUUID);
opts = matlab.addons.toolbox.ToolboxOptions(basedir,uuid);
opts.ToolboxName = tbname;
opts.OutputFile = fullfile(outdir,tbname+".mltbx");
matlab.addons.toolbox.packageToolbox(opts);
disp("Generated "+opts.OutputFile)

end